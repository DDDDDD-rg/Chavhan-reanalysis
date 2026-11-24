# Reproduction guide / 复现步骤

[English README](README.md) · [中文说明](README.zh-CN.md)

## 1. Environment / 环境

Use Linux or WSL with Bash, Python 3, `wget`, `taskset`, Java (11 or newer), Trimmomatic, FastQC, MultiQC, breseq with Bowtie2 and gdtools, samtools, and R with ggplot2. Install the tools in your own environment. Set `TRIMMOMATIC_JAR` to the full path of the Trimmomatic JAR on your machine. Start in the repository root. Allow enough space for the 22 raw FASTQ files, trimmed copies, BAMs and breseq intermediates.

在 Linux 或 WSL 上准备上述软件。在自己的环境内安装即可。把 `TRIMMOMATIC_JAR` 设为你机器上的 JAR 完整路径，从仓库根目录开始。需要预留用于原始读段、修剪文件、BAM 和运行中间文件的空间。

| Tool | Recorded version or provenance / 记录版本或来源 |
| --- | --- |
| FastQC | 0.12.1, from the MultiQC input summaries |
| MultiQC | 1.35, from the archived HTML |
| Trimmomatic | 0.39, from the trimming run log |
| breseq / gdtools | 0.40.2, from GenomeDiff and the server package inventory |
| Bowtie2 | 2.5.5, from the server package inventory |
| R | 4.5.3 in the archived server breseq environment. The figures use the ggplot2 code in this repository. |
| Python, Java, samtools, ggplot2 | Required by the relevant steps. Exact historical versions for these steps were not established from the archived outputs. |

The scripts respect the process CPU affinity and use at most two cores for the main trimming and breseq jobs. QC commands also request two threads. The commands below reconstruct the workflow from the archived inputs, results and recorded parameters. The exact historical FastQC/MultiQC and Anc pileup command lines were not retained.

脚本会根据当前进程可用核数运行，修剪和 breseq 最多使用两核。下面依据保留的输入、结果和已记录参数整理命令。FastQC/MultiQC 和 Anc pileup 的原始命令行未留存，下面给出复现用命令。

## 2. Download and verify reads / 下载和校验 reads

```bash
repo=$(pwd -P)
export TRIMMOMATIC_JAR=/path/to/trimmomatic-0.39.jar
python3 prepare_all_data.py
```

The preparation script retrieves 22 paired FASTQ files listed in `samples.tsv` into `raw/`. It checks download MD5s, gzip integrity, initial mate IDs and consistency of the bundled reference. It writes an input summary in `logs/`. Anc maps to `SRR21566767`.

脚本根据样本表下载 22 个 FASTQ 到 `raw/`，核对 MD5、gzip 完整性、双端开头读段的 ID 和参考文件。祖先样本编号为 `SRR21566767`。

If wget reports HTTP 416 for a partial file whose MD5 fails, move that specific `.part` file outside `raw/` and rerun the preparation command. Files that already pass their checksums are reused.

如果断点续传返回 HTTP 416，且报错所指的 `.part` 文件 MD5 不匹配，把该文件移出 `raw/` 后重新运行。已通过校验的文件会直接复用。

## 3. QC, trim, and repeat QC / 质控、修剪及复核

```bash
mkdir -p work/qc/raw work/qc/trimmed
fastqc -t 2 -o work/qc/raw raw/*_1.fastq.gz raw/*_2.fastq.gz
multiqc work/qc/raw -o work/qc/raw -n raw_qc.html
(cd raw && bash "$repo/scripts/run_trimmomatic_server.sh")
fastqc -t 2 -o work/qc/trimmed work/trimmed/*_1P.fastq.gz work/trimmed/*_2P.fastq.gz
multiqc work/qc/trimmed -o work/qc/trimmed -n raw_qc_2.html
```

Trimmomatic runs in paired-end, Phred+33 mode with the supplied adapter file. Recorded filters were `ILLUMINACLIP:2:40:15`, `SLIDINGWINDOW:4:20` and `MINLEN:25`. The second QC and breseq use the surviving pairs. Trim logs also record how many reads survived as pairs or singletons. Keep the archived QC reports under `qc/` for comparison.

Trimmomatic 用双端和 Phred+33 模式，依次去接头、按滑动窗口修剪、筛掉短读段。第二次 QC 和 breseq 只用两端都保留下来的读段。可将重跑报告与 `qc/` 中发布的报告逐项比对。

## 4. Call and annotate variants / 检测与注释变异

```bash
(cd work/trimmed && bash "$repo/scripts/run_breseq_all.sh")
gdtools ANNOTATE -f TSV -r reference/NC_000913.3.gbk \
  -o work/all_samples.tsv work/breseq/SRR*/data/output.gd
```

The batch runs breseq against the same public GenBank reference for all eleven samples with the consensus frequency cutoff set to 0.70. Check each `output/index.html`, `data/summary.json` and `data/output.gd`. The gdtools command produces a full annotated comparison to help locate candidates. The archived `breseq/compare/all_samples.tsv` is provided as a snapshot.

全部 11 个样本用同一份公共参考比对，breseq 的 consensus frequency cutoff 设为 0.70。可以用 gdtools 合并注释，再对照作者事件表和证据 Excel 回查。每次运行内部的 RA、JC 和 MC 编号可能变化，应按样本、坐标和变异对照。

## 5. Review ancestral evidence / 检查 Anc 读段证据

Retrieve the reference BAM and FASTA from the Anc breseq run. The position file has one-based coordinates, deduplicated across the reported SNPs. For the other six events, inspect spanning reads and both sites of the double-base substitution on the same read.

从 Anc 的 breseq 输出取出参考 BAM 和 FASTA。位点列表使用从 1 开始的坐标，并已对相同 SNP 位置去重。剩下的六条事件查看能跨过事件的 reads，双碱基替换要在同一 read 上检查两个位置。

```bash
anc=work/breseq/SRR21566767/data
mkdir -p work/anc/alignments
samtools faidx "$anc/reference.fasta"
samtools mpileup -f "$anc/reference.fasta" -l breseq/snp_sites.tsv \
  "$anc/reference.bam" > work/anc/anc_snp_pileup.tsv

awk -F '\t' 'NR > 1 && ($6 == "BSPs" || $6 == "Deletion" || $6 == "Insertion") {
    lo = ($2 < $3 ? $2 : $3) - 15
    hi = ($2 > $3 ? $2 : $3) + 15
    printf "NC_000913:%d-%d\n", lo, hi
}' metadata/author_mutations.tsv |
while IFS= read -r region; do
    breseq BAM2ALN -b "$anc/reference.bam" -f "$anc/reference.fasta" \
      -o "work/anc/alignments/${region/:/_}.html" "$region"
done
```

Compare the resulting evidence with the archived pileup and six alignments. Pileup read counts can depend on filtering and software versions. In the original evidence review, S3 at 165124 has two reads with the alternate base among 28 reads, while the R4 site at 1168987 has no usable coverage. The curated interpretations are recorded in `metadata/event_review.tsv` and the evidence workbook. Supporting and alternate read counts in the workbook come from the per-clone evidence or Anc review as identified by the column names.

将重跑结果与保留的 pileup 和六张图对照。pileup 的读段数会受过滤和软件版本影响。原结果中，S3 的 165124 位点在 Anc 的 28 条读段里有两条替代等位读段。R4 的 1168987 位点没有可用覆盖。人工判定保存在 `metadata/event_review.tsv` 和证据 Excel。

## 6. Rebuild the analysis table and plots / 重建事件表和作图

```bash
python3 scripts/rebuild_events.py --results work/breseq
Rscript scripts/figure1.R work/plot_events.tsv work/figures
```

With no arguments, the Python script reads the archived GenomeDiff files in `breseq/`. It checks all 30 published clone/position keys, the called mutation types and alleles or indel sizes against the reference and published table. The S2 insertion at 581577–581578 is recorded as equivalent to breseq's left-position representation. The script carries forward the curated gene labels and Anc evidence categories. For a full rerun, review the new ancestor outputs before adopting those categories. Expected call matches are 29 exact and one equivalent. The figures use the targeted 30-event table.

Python 默认读取已经归档的 `breseq/`，传入 `--results work/breseq` 可检查重跑结果。程序核对 30 条作者记录的克隆、坐标、变异类型和等位序列或 indel 长度，再使用人工核查表的基因标签和 Anc 判定输出作图表。S2 的插入在作者表中用 581577–581578 两侧坐标表示，breseq 使用左侧坐标。预期 29 条直接匹配、1 条等效匹配。重跑后，应先复查 Anc 的新输出再沿用人工判定。

## Tool references / 工具参考

- [breseq and BAM2ALN](https://breseq.barricklab.org/latest/usage-breseq/)
- [gdtools ANNOTATE](https://breseq.barricklab.org/latest/usage-gdtools/)
- [samtools mpileup](https://www.htslib.org/doc/samtools-mpileup.html)
- [Trimmomatic 0.39 TruSeq3-PE-2 adapter source](https://github.com/usadellab/Trimmomatic/blob/v0.39/adapters/TruSeq3-PE-2.fa)
