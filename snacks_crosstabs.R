library(gmodels)

cross_table <- function(factor)
{
  ct <- CrossTable(snacks$fit.cluster, snacks[, factor], chisq=TRUE)
  
}

