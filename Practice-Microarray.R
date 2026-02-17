Name: Nyasia Argrow; Date: 02/17/2026; Purpose: Practicing Microarray Analysis

library(affy)
setwd("/Users/nyasiaargrow/Desktop/Claflin University - Master of Science in Biotechnology/2025-2026 School Year (Year 2)/Spring 2026/BTEC-620 - Bioinformatics/Microarray Practice")

data <- ReadAffy()
boxplot(data)

normalizeddata <- rma(data)
boxplot(exprs(normalizeddata))

head(exprs(normalizeddata))

newdata <- exprs(normalizeddata)
treatment <- newdata[,c(1,2)]
control <- newdata[,c(3,4)]
head(treatment)
head(control)

treatmentaverage <- rowMeans(treatment)
controlaverage <- rowMeans(control)
head(treatmentaverage)
head(controlaverage)

foldchange <- treatmentaverage - controlaverage
head(foldchange)

write.csv(foldchange, "Practice.csv")