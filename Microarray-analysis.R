# Name: Nyasia Argrow; Date: 01/27/2026; Purpose: Microarray Analysis

#Install Affymetrix library/Package
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
    
    BiocManager::install("affy")

library(affy)    
    
setwd("/Users/nyasiaargrow/Desktop/Claflin University - Master of Science in Biotechnology/2025-2026 School Year (Year 2)/Spring 2026/BTEC-620 - Bioinformatics")