# Name: Nyasia Argrow; Date: 01/27/2026; Purpose: Microarray Analysis

#Install Affymetrix library/Package
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
    
    BiocManager::install("affy")

#Load the library Affy
library(affy)    
 
#Set the working directory to a folder where you have .CEL files    
setwd("/Users/nyasiaargrow/Desktop/Claflin University - Master of Science in Biotechnology/2025-2026 School Year (Year 2)/Spring 2026/BTEC-620 - Bioinformatics")

#Read the 4 .CEL files in R
data <- ReadAffy()

# Generate a boxplot to visualize dataset
boxplot(data)

#Normalize the dataset to remove any outliers and stable the median for all .CEL files






