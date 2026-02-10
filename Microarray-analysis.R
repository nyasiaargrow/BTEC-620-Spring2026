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
normalizeddata <-rma(data)

# Generate a boxplot to visualize normalized dataset
boxplot(exprs(normalizeddata))

#Fold change analysis for comparing treatment vs. control samples

#Lets assume GSM4843.CEL and GSM4844.CEL samples to be Leukemia/Blood cancer and GSM4845.CEL and GSM4846.CEL to be normal blood samples
head(exprs(normalizeddata))

#Take means/average on each row
newdata <- exprs(normalizeddata)
treatment <- newdata[,c(1,2)]
control <- newdata[,c(3,4)]
head(treatment)
head(control)

#Apply the rowMeans function to calculate averages
treatmentaverage <- rowMeans(treatment)
controlaverage <- rowMeans(control)
head(treatmentaverage)
head(controlaverage)

#Apply fold change by subtraction
foldchange <- treatmentaverage - controlaverage
head(foldchange)

#If genes fold change value is > 2, it's an up-regulated gene, and if it's < -2, it's a down-regulated gene, and if genes are between -2 and +2, they are insignificant genes

#Export variable foldchange in an .CSV file
write.csv(foldchange, "foldchange.csv")





