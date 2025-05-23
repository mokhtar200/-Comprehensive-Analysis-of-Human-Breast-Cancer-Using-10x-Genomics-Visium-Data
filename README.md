# Comprehensive-Analysis-of-Human-Breast-Cancer-Using-10x-Genomics-Visium-Data

Spatial transcriptomics allows researchers to visualize gene expression within the spatial context of intact tissue. This project uses a real breast cancer dataset generated with 10x Genomics Visium technology to explore cellular heterogeneity and tissue architecture in a spatially resolved manner.

---

## 🧠 Project Overview

**Objective:**  
To analyze and visualize spatial gene expression data in human breast cancer tissue using Seurat, identify spatially variable genes, and reveal cell clusters and their gene expression patterns within the tissue microenvironment.

**Main Tasks:**
- Load and process Visium spatial transcriptomics data.
- Perform quality control and filtering.
- Normalize and cluster the data.
- Visualize clusters and gene expression spatially.
- Perform differential expression analysis to identify spatially distinct gene markers.

---

## 📊 Dataset

**Title:** Human Breast Cancer (Block A, Section 1)  
**Source:** 10x Genomics  
**Description:** Fresh frozen breast cancer tissue section profiled using Visium spatial gene expression solution.  
**Link:**  
https://www.10xgenomics.com/datasets/human-breast-cancer-visium-fresh-frozen-whole-transcriptome-1-standard
---

## 🧪 Methodology

### Step 1: Load Spatial Data
- Uses `Load10X_Spatial()` from Seurat.
- Extracts gene expression matrix and spatial image coordinates.

### Step 2: Quality Control
- Visualize the number of genes and counts per spot.
- Filter out low-quality spots using `nFeature_Spatial` thresholds.

### Step 3: Data Normalization and Clustering
- Normalization via SCTransform.
- Dimensionality reduction with PCA and UMAP.
- Graph-based clustering with `FindNeighbors()` and `FindClusters()`.

### Step 4: Spatial Visualization
- Visualize tissue spots colored by cluster and by expression of specific marker genes (e.g., **MUC1**, a known epithelial marker).

### Step 5: Differential Expression
- Identify cluster-specific marker genes using `FindAllMarkers()`.

---

## 🗂 Directory Structure

SpatialInsight_BreastCancer/
│
├── data/ # Raw dataset from 10x Genomics
│ └── V1_Breast_Cancer_Block_A_Section_1/
│
├── scripts/ # R scripts for each step
│ ├── 01_load_data.R
│ ├── 02_quality_control.R
│ ├── 03_normalization_clustering.R
│ ├── 04_spatial_visualization.R
│ └── 05_differential_expression.R
│
├── results/ # Output files and plots
│ ├── spatial_clusters.png
│ ├── gene_expression_featureplot.png
│ └── DE_genes.csv
│
├── README.md
└── .gitignore

