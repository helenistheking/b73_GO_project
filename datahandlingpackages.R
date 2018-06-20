##import the GO values 
# GOresults <- read.delim("~/Desktop/labwork2/b73_GO/GOresults.txt", header=FALSE)
# colnames(GOresults)[1]<-"Gene"
# colnames(GOresults)[2]<-"GO_term_accession"

#GO packages
install.packages("ontologyIndex")
install.packages("ontologySimilarity")
install.packages("ontologyPlot")
library(ontologyIndex)
library(ontologyPlot)
library(ontologySimilarity)
library(utils)
##so dumb - creates word clouds
#source("https://bioconductor.org/biocLite.R")
#biocLite("GOsummaries")


onto_plot()

