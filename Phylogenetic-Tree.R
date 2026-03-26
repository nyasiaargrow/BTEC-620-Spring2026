#Author: Nyasia Argrow, Date: 3/26/2026, Purpose: To generate a phylogenetic tree structure.

#Load the ape package.
library(ape)

#Generate some dummy data for tree structure.
text.string <- "(((((((cow, pig),whale),(bat,(lemur,human))),(robin,iguana)),coelacanth),gold_fish),shark);"
vert.tree <- read.tree(text = text.string)

#Plot the tree structure.
plot(vert.tree,no.margin=TRUE,edge.width=2)

#Writing/storing the tree structure dataset.
> setwd("/Users/nyasiaargrow/Desktop/Claflin University - Master of Science in Biotechnology/2025-2026 School Year (Year 2)/Spring 2026/BTEC-620 - Bioinformatics")
write.tree(vert.tree,file="dummy.tre") 

