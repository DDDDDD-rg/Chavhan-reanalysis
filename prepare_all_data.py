#!/usr/bin/env python3
"""Prepare all 11 Chavhan samples; downloads and integrity checks only."""
import csv
import datetime
import gzip
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys

ROOT = Path(__file__).resolve().parent
DNA_SHA256 = 'e999dceccb76562d40e49a10d9e6d4cf1c05d184f4f80b92bb32d4a2420c11d0'
RUNS = dict(zip(['Anc','S1','S2','S3','S4','S5','R1','R2','R3','R4','R5'],
                ['SRR21566767','SRR21566766','SRR21566764','SRR21566763','SRR21566762','SRR21566761','SRR21566760','SRR21566759','SRR21566758','SRR21566757','SRR21566765']))

def digest(path, algorithm='md5'):
    h = hashlib.new(algorithm)
    with path.open('rb') as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b''):
            h.update(block)
    return h.hexdigest()

def reference_check():
    gb = (ROOT / 'reference/NC_000913.3.gbk').read_text(encoding='utf8')
    assert re.search(r'^VERSION\s+NC_000913\.3\b', gb, re.M), 'Reference accession mismatch'
    assert re.search(r'^     CDS\s', gb, re.M) and '/gene="mraY"' in gb, 'Reference annotations missing'
    sequence = re.sub('[^A-Za-z]', '', gb.split('\nORIGIN', 1)[1].split('//', 1)[0]).upper()
    fasta = ''.join(line.strip() for line in (ROOT / 'reference/NC_000913.3.fasta').read_text().splitlines() if not line.startswith('>')).upper()
    assert sequence == fasta and len(sequence) == 4641652, 'Reference sequence/length mismatch'
    assert hashlib.sha256(sequence.encode()).hexdigest() == DNA_SHA256, 'Reference DNA hash mismatch'

def paired_prefix_check(a, b):
    with gzip.open(a, 'rt', encoding='ascii') as left, gzip.open(b, 'rt', encoding='ascii') as right:
        for _ in range(1000):
            x, y = [left.readline().rstrip('\r\n') for _ in range(4)], [right.readline().rstrip('\r\n') for _ in range(4)]
            if not x[0] and not y[0]:
                break
            for record in (x, y):
                assert record[0].startswith('@') and record[2].startswith('+'), 'Invalid FASTQ record'
                assert record[1] and len(record[1]) == len(record[3]), 'FASTQ sequence/quality mismatch'
            xid, yid = [re.sub(r'/[12]$', '', z[0].split()[0]) for z in (x, y)]
            assert xid == yid, 'Paired read identifiers mismatch'

def main():
    if hasattr(os, 'sched_getaffinity'):
        os.sched_setaffinity(0, sorted(os.sched_getaffinity(0))[:2])
    if not shutil.which('wget'):
        raise RuntimeError('wget is not on PATH')
    for directory in ('raw', 'metadata', 'reference', 'logs'):
        (ROOT / directory).mkdir(exist_ok=True)
    import fcntl
    lock = (ROOT / 'logs/data_preparation.lock').open('a')
    try:
        fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
    except BlockingIOError:
        raise RuntimeError('Another preparation process is already running for this project')
    reference_check()
    with (ROOT / 'samples.tsv').open(encoding='utf-8-sig', newline='') as stream:
        rows = list(csv.DictReader(stream, delimiter='\t'))
    assert len(rows) == 11 and {r['sample']: r['run_accession'] for r in rows} == RUNS, 'Sample mapping mismatch'
    with (ROOT / 'metadata/author_mutations.tsv').open(encoding='utf8', newline='') as stream:
        assert len(list(csv.DictReader(stream, delimiter='\t'))) == 30, 'Expected 30 author mutation events'
    expected_bytes = sum(int(row['compressed_bytes_total']) for row in rows)
    assert expected_bytes == 2025013024
    missing_bytes = sum(int(row['compressed_bytes_total']) for row in rows
                        if any(not (ROOT / 'raw' / (row['run_accession'] + '_' + mate + '.fastq.gz')).exists() for mate in ('1', '2')))
    if shutil.disk_usage(ROOT).free < missing_bytes + 1024 ** 3:
        raise RuntimeError('Insufficient free disk space for compressed inputs plus 1 GiB reserve')
    print('Project:', ROOT, flush=True)
    print('11 samples; 22 FASTQs; 2,025,013,024 compressed bytes. Sequential wget downloads.', flush=True)
    checks, checksum_lines = [], []
    for row in rows:
        pair = []
        for mate in ('1', '2'):
            name = row['run_accession'] + '_' + mate + '.fastq.gz'
            target = ROOT / 'raw' / name
            expected = row['md5_R' + mate]
            url = row['fastq_R' + mate + '_https']
            assert url.startswith('https://ftp.sra.ebi.ac.uk/vol1/fastq/') and url.endswith('/' + name)
            print('\n[%s mate %s] %s' % (row['sample'], mate, name), flush=True)
            if target.exists():
                if digest(target) != expected:
                    raise RuntimeError('Existing file has wrong MD5; preserved for inspection: ' + str(target))
                print('Existing file: MD5 OK; skipping download.', flush=True)
            else:
                partial = target.with_name(target.name + '.part')
                subprocess.run(['wget', '--continue', '--tries=5', '--timeout=60', '--waitretry=5',
                                '--progress=dot:giga', '-O', str(partial), url], check=True)
                if digest(partial) != expected:
                    raise RuntimeError('Downloaded MD5 mismatch; partial file preserved: ' + str(partial))
                partial.replace(target)
            with gzip.open(target, 'rb') as stream:
                for _ in iter(lambda: stream.read(1024 * 1024), b''):
                    pass
            print('MD5 and full gzip integrity: OK', flush=True)
            pair.append(target)
            checksum_lines.append(expected + '  raw/' + name)
            checks.append(dict(sample=row['sample'], mate=int(mate), file='raw/' + name,
                               bytes=target.stat().st_size, md5=expected, gzip_ok=True))
        assert sum(path.stat().st_size for path in pair) == int(row['compressed_bytes_total']), 'Sample total bytes mismatch'
        paired_prefix_check(*pair)
        print(row['sample'] + ': paired first 1000 records OK.', flush=True)
    (ROOT / 'metadata/raw_fastq.md5').write_text('\n'.join(checksum_lines) + '\n', encoding='utf8')
    report = dict(completed_at=datetime.datetime.now().astimezone().isoformat(), sample_count=11,
                  fastq_count=len(checks), compressed_bytes=sum(item['bytes'] for item in checks),
                  reference_dna_sha256=DNA_SHA256, reference_ok=True, author_event_count=30,
                  fastq_checks=checks, qc_run=False, variant_calling_run=False)
    out = ROOT / 'logs/data_preparation_summary.json'
    out.write_text(json.dumps(report, indent=2) + '\n', encoding='utf8')
    print('\nALL INPUT DATA READY: 11 samples / 22 FASTQs; reference and metadata verified.', flush=True)
    print('Summary:', out, flush=True)
    print('Next: FastQC and review. No QC, trimming or breseq analysis was run.', flush=True)

if __name__ == '__main__':
    try:
        main()
    except Exception as exc:
        print('\nSTOPPED: ' + str(exc), file=sys.stderr, flush=True)
        sys.exit(1)
