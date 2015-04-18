library(foreign)
library(cluster)

setwd("~/DataAnalysis/Snacks")

snacks = read.spss("snacks_wks1_26.sav", to.data.frame = TRUE)
snack_purchase <- snacks[,2:11]

par(cex=.9)
# Determine number of clusters
wss <- (nrow(snack_purchase)-1)*sum(apply(snack_purchase ,2 ,var))
for (i in 2:15) wss[i] <- sum(kmeans(snack_purchase, 
                                     centers=i)$withinss)
plot(1:15, wss, type="b", xlab="Number of Clusters",
     ylab="Within groups sum of squares", pch=20, cex=.75)

dev.copy(png, file="number_of_clusters.png")
dev.off()