# Load Seurat object
spatial_seurat <- readRDS("results/spatial_seurat_raw.rds")

# QC Plots
VlnPlot(spatial_seurat, features = c("nCount_Spatial", "nFeature_Spatial"), pt.size = 0.1) +
  theme_minimal()

# Filter low-quality spots
spatial_seurat <- subset(spatial_seurat, subset = nFeature_Spatial > 200)

# Save filtered object
saveRDS(spatial_seurat, file = "results/spatial_seurat_filtered.rds")
