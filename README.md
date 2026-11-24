# Reanalysis of Chavhan et al. (2023)

[中文说明](README.zh-CN.md) · [Reproduction guide](REPRODUCE.md)

This repository reanalyses public *Escherichia coli* resequencing reads from the ancestral isolate and ten endpoint clones. It checks the 30 clone-specific events reported in Supplementary Data 1 and reviews the corresponding loci in the ancestor. The public reference is *E. coli* K-12 MG1655 (`NC_000913.3`).

## Results

- The 30 reported events have corresponding breseq calls in the endpoint clones. There are 29 direct matches and one equivalent representation of an insertion.
- The ancestral evidence review classified 28 events as reference supported, one as having a minor alternate signal, and one as having no coverage. These are read-level evidence categories. The uncovered site remains unresolved.
- The recurrence plot shows the distribution of the **30 published targets** across the ten clones. It draws on the reviewed event list.

## Browse the results

| File | Contents |
| --- | --- |
| [Raw MultiQC](qc/raw_qc.html), [trimmed MultiQC](qc/raw_qc_2.html), [QC summary](report/QC_Summary.xlsx), [trimming counts](qc/trimming_stats.tsv) | Before/after QC for the paired inputs and read-pair retention |
| [Per-sample alignment summary](breseq/sample_mapping.tsv) | Aligned reads and alignment percentages from each `summary.json` |
| [Event evidence workbook](breseq/compare/Author_Event_Evidence.xlsx) | Per-event call, read support, ancestral review and evidence links |
| [GenomeDiff collection](breseq/), [comparison TSV](breseq/compare/all_samples.tsv) | Eleven GenomeDiff and JSON files and the combined annotation table |
| [Ancestral pileup](breseq/anc_snp_pileup.tsv), [local alignments](breseq/alignments/) | Reference and alternate evidence at reviewed sites |
| [Clone-by-gene plot](report/fig1_clone_gene.png), [ancestral evidence plot](report/fig2_anc_evidence.png) | The two project figures |

Clone or download the repository before opening the Excel workbook. Its hyperlinks are relative to the workbook. Keep the `breseq/` directory structure intact. The MultiQC pages are also best viewed by opening the downloaded HTML files in a browser.

## Quick check using the archived results

From the repository root, run the following commands. Python 3 and R with ggplot2 are sufficient for this check.

```sh
python3 scripts/rebuild_events.py
Rscript scripts/figure1.R work/plot_events.tsv work/figures
```

The [reproduction guide](REPRODUCE.md) covers downloading the original reads, checking their checksums, QC, trimming, breseq and ancestral evidence review. Generated working files go under `work/`, `raw/` and `logs/`.

## Data and citation

- Chavhan et al. (2023). “Bacteria evolve macroscopic multicellularity by the genetic assimilation of phenotypically plastic cell clustering.” *Nature Communications*. DOI [10.1038/s41467-023-39320-9](https://doi.org/10.1038/s41467-023-39320-9). The table [`author_mutations.tsv`](metadata/author_mutations.tsv) is a TSV transcription of published Supplementary Data 1. The article is available under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/). Follow the publisher's credit lines for any third-party material.
- [BioProject PRJNA880543](https://www.ncbi.nlm.nih.gov/bioproject/PRJNA880543). The [sample manifest](samples.tsv) maps the eleven clones or isolates to their public accessions and gives ENA HTTPS URLs and MD5 checksums for both mates.
- [GenBank NC_000913.3](https://www.ncbi.nlm.nih.gov/nuccore/NC_000913.3). FASTA and GenBank are provided under [reference/](reference/). The GenBank annotation supplies the feature labels used by breseq.
