args <- commandArgs(trailingOnly = TRUE)
if (length(args) > 2L) {
  stop("Usage: Rscript scripts/figure1.R [plot_events.tsv] [output_dir]")
}
input <- if (length(args) >= 1L) args[1] else "breseq/compare/plot_events.tsv"
out <- if (length(args) >= 2L) args[2] else "work/figures"
events <- read.delim(input)
library(ggplot2)
clone_gene <- ggplot(events, aes(x = clone, y = gene_region, fill = variant_type)) + 
  geom_tile(width = 0.85, height = 0.85)
clone_order <- c(paste0("S", 1:5), paste0("R", 1:5))
gene_order <- names(sort(table(events$gene_region), decreasing = TRUE))


clone_gene_final <- clone_gene + 
  scale_x_discrete(limits = clone_order) + 
  scale_y_discrete(limits = rev(gene_order)) + 
  labs(
    x = NULL, 
    y = NULL,
    fill = "Variant type") + theme_minimal(base_size = 15)+
  geom_vline(xintercept = 5.5, colour = "grey65", linewidth = 0.4) + 
  scale_fill_manual(
    values = c(
      "Single-base substitution" = "#4477AA",
      "Double-base substitution" = "#8056A0",
      "Insertion" = "#228833",
      "Deletion" = "#CC6633"
    ),
    breaks = c("Single-base substitution", "Double-base substitution",
               "Insertion", "Deletion")
  ) +
  guides(fill = guide_legend(nrow = 2, byrow = TRUE)) +
  theme(
    legend.position = "bottom",
    panel.grid.major = element_line(colour = "grey92", linewidth = 0.3)
  )



anc_counts <- as.data.frame(table(events$anc_status))
names(anc_counts) <- c("status", "n")
anc_proof <- ggplot(anc_counts, aes(x = n, y = reorder(status, n))) + 
                      geom_col(width = 0.6, fill = "steelblue") +
  geom_text(aes(label = n), hjust = -0.3, size = 4)
anc_proof_final <- anc_proof +
  scale_x_continuous(expand = expansion(mult = c(0, 0.1))) +
  labs(
    x = "Number of recovered events", 
    y = NULL,
  ) + theme_minimal(base_size = 15) +
  scale_y_discrete(limits = c(
    "No coverage",
    "Minor ALT observed",
    "Reference supported"
  )) + 
  theme(panel.grid.major.y = element_blank(),
        panel.grid.minor = element_blank())
  

dir.create(out, recursive = TRUE, showWarnings = FALSE)
ggsave(file.path(out, "fig1_clone_gene.png"), clone_gene_final, width = 7.5, height = 6, dpi = 300)
ggsave(file.path(out, "fig2_anc_evidence.png"), anc_proof_final, width = 7.5, height = 2.5, dpi = 300)
