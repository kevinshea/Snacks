library(foreign)
library(cluster)
snacks = read.spss("snacks_wks1_26.sav", to.data.frame = TRUE)
snack_purchase <- snacks[,2:11]

fit <- kmeans(snack_purchase, 6)
snack_purchase <- data.frame(snack_purchase, fit$cluster)
clusplot(snack_purchase, fit$cluster, color=TRUE, shade=TRUE)
snacks <- data.frame(snacks, fit$cluster)
centers <- fit$centers
write.table(centers, file="snacks_centers.csv", sep=",", row.names=FALSE)