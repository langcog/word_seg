rm(list=ls())
source("~/Old Projects/R/Ranalysis/useful.R") # github.com/langcog/Ranalysis

d1 <- read.csv("data/FGGT-E1-data.csv")
d2 <- read.csv("data/FGGT-E2-data.csv")
d3 <- read.csv("data/FGGT-E3-data.csv")

mss1 <- aggregate(correct ~ sent.len + subid, d1, mean)
ms1 <- aggregate(correct ~ sent.len, mss1, mean)
qplot(sent.len, correct, data=mss1) + 
  geom_line(aes(x=sent.len,y=correct),data=ms1, col="red")

mss2 <- aggregate(correct ~ n.tokens + subid, d2, mean)
ms2 <- aggregate(correct ~ n.tokens, mss2, mean)
qplot(n.tokens, correct, data=mss2) + 
  geom_line(aes(x=n.tokens,y=correct),data=ms2, col="red")
  
mss3 <- aggregate(correct ~ n.types + subid, d3, mean)
ms3 <- aggregate(correct ~ n.types, mss3, mean)
qplot(n.types, correct, data=mss3) + 
  geom_line(aes(x=n.types,y=correct),data=ms3, col="red")


