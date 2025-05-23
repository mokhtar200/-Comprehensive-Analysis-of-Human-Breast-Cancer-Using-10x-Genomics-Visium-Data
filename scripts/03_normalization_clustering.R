library(Seurat)

# Load filtered data
spatial_seurat <- readRDS("results/spatial_seurat_filtered.rds")

# Normalize using SCTransform
spatial_seurat <- SCTransform(spatial_seurat, assay = "Spatial", verbose = FALSE)

# Dimensionality reduction
spatial_seurat <- RunPCA(spatial_seurat, verbose = FALSE)
spatial_seurat <- FindNeighbors(spatial_seurat, dims = 1:30)
spatial_seurat <- FindClusters(spatial_seurat, verbose = FALSE)
spatial_seurat <- RunUMAP(spatial_seurat, dims = 1:30)

# Save results
saveRDS(spatial_seurat, file = "results/spatial_seurat_clustered.rds")
