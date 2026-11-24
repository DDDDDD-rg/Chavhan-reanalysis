"""Validate reviewed events against GenomeDiff calls and rebuild the plotting TSV."""

import argparse
import csv
import re
from collections import Counter
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
TYPES = {
    "BSP": ("SNP", "Single-base substitution"),
    "BPS": ("SNP", "Single-base substitution"),
    "BSPs": ("SUB", "Double-base substitution"),
    "Insertion": ("INS", "Insertion"),
    "Deletion": ("DEL", "Deletion"),
}
FIELDS = (
    "clone", "condition", "gene_region", "position", "dna_change",
    "variant_type", "match", "anc_status", "anc_evidence",
)


def read_table(path):
    with path.open(encoding="utf-8-sig", newline="") as stream:
        return list(csv.DictReader(stream, delimiter="\t"))


def gd_calls(path):
    with path.open(encoding="utf-8") as stream:
        for line in stream:
            fields = line.rstrip().split("\t")
            if len(fields) >= 6 and fields[0] in {"SNP", "SUB", "INS", "DEL"}:
                yield fields


def expected_call(source, review, reference):
    kind, label = TYPES[source["Type"]]
    start, end = sorted(int(source[key]) for key in ("Genomic Min", "Genomic Max"))
    position = int(review["position"])
    change = review["dna_change"]
    if kind in {"SNP", "SUB"}:
        ref, alt = source["Change nt"].split(" -> ")
        if position != start or reference[start - 1:end] != ref or change != f"{ref} > {alt}":
            raise ValueError(f"Substitution mismatch: {review}")
        allele = [alt] if kind == "SNP" else [str(len(ref)), alt]
    elif kind == "INS":
        insertion = re.fullmatch(r"ins \(([ACGT]+)\)", source["Change nt"])
        if not insertion or position != start or change != f"Insert {insertion[1]}":
            raise ValueError(f"Insertion mismatch: {review}")
        allele = [insertion[1]]
    else:
        size = end - start + 1
        ref = reference[start - 1:end]
        author_change = source["Change nt"]
        repeat = re.fullmatch(r"\(([ACGT])\)(\d+) -> \(([ACGT])\)(\d+)", author_change)
        valid_source = (
            ref == author_change[1:] if author_change.startswith("-")
            else repeat and repeat[1] == repeat[3] and int(repeat[2]) - int(repeat[4]) == size
            and ref == repeat[1] * size
        )
        expected_change = f"Delete {ref}" if size == 1 else f"Delete {size} bp"
        if position != start or not valid_source or change != expected_change:
            raise ValueError(f"Deletion mismatch: {review}")
        allele = [str(size)]
    return [kind, "NC_000913", str(position), *allele], label


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--results", type=Path, default=ROOT / "breseq", help="Directory with RUN/data/output.gd")
    parser.add_argument("--out", type=Path, default=ROOT / "work/plot_events.tsv")
    args = parser.parse_args()
    samples = {row["sample"]: row for row in read_table(ROOT / "samples.tsv")}
    sources = {
        (row["Clone"], min(int(row["Genomic Min"]), int(row["Genomic Max"]))): row
        for row in read_table(ROOT / "metadata/author_mutations.tsv")
    }
    reviews = read_table(ROOT / "metadata/event_review.tsv")
    keys = {(r["clone"], int(r["position"])) for r in reviews}
    if len(reviews) != 30 or len(keys) != len(reviews) or keys != sources.keys():
        raise ValueError("Reviewed keys must cover the 30 published clone-specific events.")
    fasta = ROOT / "reference/NC_000913.3.fasta"
    reference = "".join(line.strip() for line in fasta.read_text().splitlines() if not line.startswith(">")).upper()
    calls_by_clone = {
        clone: list(gd_calls(args.results / sample["run_accession"] / "data/output.gd"))
        for clone, sample in samples.items() if clone != "Anc"
    }
    plot_rows = []
    for review in reviews:
        clone = review["clone"]
        key = (clone, int(review["position"]))
        expected, label = expected_call(sources[key], review, reference)
        for record in calls_by_clone[clone]:
            if [record[0], *record[3:3 + len(expected) - 1]] == expected:
                break
        else:
            raise ValueError(f"No corresponding GenomeDiff mutation found: {clone}, {expected}")
        plot_rows.append({**review, "variant_type": label, "condition": samples[clone]["condition"]})

    args.out.parent.mkdir(parents=True, exist_ok=True)
    with args.out.open("w", encoding="utf-8", newline="") as stream:
        writer = csv.DictWriter(stream, fieldnames=FIELDS, delimiter="\t", lineterminator="\n", extrasaction="ignore")
        writer.writeheader()
        writer.writerows(plot_rows)
    print(f"{len(plot_rows)} events: {dict(Counter(r['match'] for r in plot_rows))}")
    print(f"Reviewed Anc status: {dict(Counter(r['anc_status'] for r in plot_rows))}")
    print(f"Wrote {args.out}")


if __name__ == "__main__":
    main()
