# Chavhan 等（2023）数据复现

[English README](README.md) · [中英文复现步骤](REPRODUCE.md)

本复现使用公开测序数据，包含一份祖先样本和十份培养终点的克隆样本。以大肠杆菌 K-12 MG1655（`NC_000913.3`）作公共参考，核查原论文 Supplementary Data 1 中报告的 30 条克隆变异事件，并查看 Anc 对应位置的读段证据。

## 主要结果

- 30 条作者报告的事件都在对应后代的 breseq 调用中找到。29 条直接匹配，1 条插入使用了等效的坐标表达。
- Anc 的核查结果为 28 条支持参考等位、1 条看到少量替代等位读段、1 条没有覆盖。没有覆盖的事件在 Anc 中仍无法判定。
- 克隆与基因图展示这 30 条目标事件在 10 个后代克隆中的分布。

## 从哪里看

| 文件 | 用途 |
| --- | --- |
| [修剪前 MultiQC](qc/raw_qc.html)、[修剪后 MultiQC](qc/raw_qc_2.html)、[QC 表](report/QC_Summary.xlsx)、[修剪计数](qc/trimming_stats.tsv) | 查看修剪前后质控和双端读段保留率 |
| [样本比对汇总](breseq/sample_mapping.tsv) | 查看各样本的读数和比对率 |
| [30 条事件证据表](breseq/compare/Author_Event_Evidence.xlsx) | 查看调用、读段支持、Anc 判定和证据链接 |
| [变异调用与比对摘要](breseq/)、[合并注释表](breseq/compare/all_samples.tsv) | 查看各样本的 `output.gd`、`summary.json` 及合并结果 |
| [Anc pileup](breseq/anc_snp_pileup.tsv)、[Anc 局部比对](breseq/alignments/) | 回查祖先样本的位点和读段证据 |
| [克隆与基因图](report/fig1_clone_gene.png)、[Anc 证据图](report/fig2_anc_evidence.png) | 查看两张结果图 |

先克隆仓库或下载并解压，再打开 Excel 和 MultiQC HTML。Excel 的证据链接按工作簿的相对路径设置，保留 `breseq/` 下现有结构即可。

## 快速核对

在仓库根目录运行下列命令，只需 Python 3 和安装了 ggplot2 的 R。

```sh
python3 scripts/rebuild_events.py
Rscript scripts/figure1.R work/plot_events.tsv work/figures
```

完整流程见[中英文复现步骤](REPRODUCE.md)。[样本表](samples.tsv)列有 11 个测序编号、ENA 下载地址和 MD5。[作者事件表](metadata/author_mutations.tsv)由原论文附表整理为 TSV。原论文为 Chavhan 等（2023），*Nature Communications*，DOI 为 [10.1038/s41467-023-39320-9](https://doi.org/10.1038/s41467-023-39320-9)。测序数据隶属 [PRJNA880543](https://www.ncbi.nlm.nih.gov/bioproject/PRJNA880543)，参考序列见 [NC_000913.3](https://www.ncbi.nlm.nih.gov/nuccore/NC_000913.3)。
