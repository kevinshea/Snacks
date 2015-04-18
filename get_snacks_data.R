library(foreign)
library(cluster)

setwd("~/DataAnalysis/Snacks")

snacks = read.spss("snacks_wks1_26.sav", to.data.frame = TRUE)
snack_purchase <- snacks[,2:11]
