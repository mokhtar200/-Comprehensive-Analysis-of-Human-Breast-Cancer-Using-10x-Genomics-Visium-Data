library(Seurat)
library(dplyr)

# Load clustered object
spatial_seurat <- readRDS("results/spatial_seurat_clustered.rds")

# Identify markers for each cluster
markers <- FindAllMarkers(spatial_seurat, only.pos = TRUE, min.pct = 0.25, logfc.threshold = 0.25)
write.csv(markers, file = "results/DE_genes.csv")

# View top 5 markers per cluster
top5 <- markers %>%
  group_by(cluster) %>%
  slice_max(order_by = avg_log2FC, n = 5)
print(top5)
