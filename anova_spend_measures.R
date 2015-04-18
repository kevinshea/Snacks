
measures <- c("tot", "cnt", "tot_snck", "cnt_snck")
pvalues <- sapply(measures, function(x) anova(lm(snacks[,"fit.cluster"]~snacks[,x]))$"Pr(>F)")