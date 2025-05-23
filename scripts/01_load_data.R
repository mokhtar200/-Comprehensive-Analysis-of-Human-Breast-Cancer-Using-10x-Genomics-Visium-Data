# Load required libraries
library(Seurat)
library(ggplot2)

# Load Visium spatial transcriptomics dataset
data_dir <- "data/V1_Breast_Cancer_Block_A_Section_1"
spatial_seurat <- Load10X_Spatial(data.dir = data_dir)

# Save Seurat object
saveRDS(spatial_seurat, file = "results/spatial_seurat_raw.rds")
