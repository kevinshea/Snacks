Alt-H1 I Got Snacks on Snacks on Snacks

## Goal of Analysis

Read snack purchase information from SPSS file, then perform K-means cluster analysis.

Perform Crosstab and Anova analysis on clusters to better understand differences between clusters.


### Data Source

**Description**

Random Sample of 26 weeks of transaction data for 650 store shoppers of a particular chain of supermarkets

**File to Use**

snacks_wks1_26.sav

**Variable Descriptions**

See file above: snack_variables.png

### Key Scripts

1. determine_number_clusters.R - produces exploratory chart for choosing number of clusters
2. snack_kmeans.R - creates the clusters
3. snacks_crosstabs.R - produces crosstab for given variable
4. anova_spend_measures.R - determines if clusters are stastically significantly different on various purchase variables.
