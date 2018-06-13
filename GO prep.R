
##read the tables into the list

#B73_Inf_genes <- read_excel("B73 Inf vs B73 Mock (cutoffs).xlsx", range = "A8:D1046")
#AGPv4 <- read_excel("AGPv4 Biomart GO.xlsx")
AGV4woKEGG <- AGPv4[,1:8]
colnames(AGPv4)[1]<- "Gene"
colnames(AGV4woKEGG)[1] <- "Gene"

#the merging of the two tables with and without three columns
library(dplyr)
raw<-right_join(AGPv4,B73_Inf_genes, by=c("Gene"))
genes_GO_full <-right_join(AGV4woKEGG,B73_Inf_genes, by=c("Gene"))

#removing the NA and making the right form for use with agriGO
genes_GO <- cbind.data.frame(genes_GO_full$Gene, genes_GO_full$`GO term accession`)
genes_GO<-na.omit(genes_GO)
write.csv(genes_GO, file = "gene_GOlist.csv")
