library(Seurat)
library(ggplot2)
library(patchwork)

# Load clustered object
spatial_seurat <- readRDS("results/spatial_seurat_clustered.rds")

# Spatial Dim Plot
p1 <- SpatialDimPlot(spatial_seurat, label = TRUE, label.size = 3)
ggsave("results/spatial_clusters.png", p1, width = 8, height = 6)

# Feature plot of a known marker (e.g., MUC1)
p2 <- SpatialFeaturePlot(spatial_seurat, features = "MUC1")
ggsave("results/gene_expression_featureplot.png", p2, width = 8, height = 6)
