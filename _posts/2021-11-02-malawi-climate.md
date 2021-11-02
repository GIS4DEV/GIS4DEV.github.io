---
layout: lesson
title: Malawi Climate Vulnerability
purpose: "study a climate vulnerability model of Malawi"
format: lecture
date: 2021-11-04 09:30
---

## Reading

Malcomb, D. W., E. A. Weaver, and A. R. Krakowka. 2014. Vulnerability modeling for sub-Saharan Africa: An operationalized approach in Malawi. *Applied Geography* 48:17–30. DOI:[10.1016/j.apgeog.2014.01.004](https://doi.org/10.1016/j.apgeog.2014.01.004)

## Reading

Our next GIS analysis challenge is to reproduce the Malcomb et al (2014) paper cited above. Our first task in doing so is to understand the data and methods applied in this paper to the fullest extent and greatest detail possible, before we study and improve upon an implementation of the methods in R.

To this goal, please take notes on:
- All data sources and variables used
- All analytical steps taken, e.g. by drafting a workflow diagram for the paper's methods
- Any information we can use to verify our results as we reproduce the paper. For example, descriptive statistics, quantitative results, or mapped results.

In addition, you may want to think about the **construct validity** of the paper in terms of the relationship between theoretical concepts and the quantitative/spatial measurements and analytical tools used to represent the concepts in GIS.

Be prepared to draw ***workflow diagrams*** for the analysis in this research paper, especially the data and steps required to produce **figure 4** and **figure 5**.

## Comparing Choropleth Maps

Geographic research studies often result in choropleth maps.
If we want to reproduce those studies and compare our results, then we will need a quantitative method for comparing our reproduced qualitative maps to the originals.

There are many established concepts methods for assessing agreement, error, and uncertainty in maps, including:

- Internal Validation, e.g. with Monte Carlo simulation
- External Validation & Ground Truthing
- Nominal (Categorical) Data: Confusion Matrix and derived statistics: producer's accuracy, consumer's accuracy, and Kappa
- Interval and Ratio Data: precision, accuracy, and Root Mean Square Error

These methods are confounded by:
- Modifiable Areal Unit Problem (MAUP)
- Discrete vs Continuous (fuzzy) representations of space and of categories
- Choropleth maps are *ordinal* data

The **Spearman's Rho** ranked correlation coefficient allows us to compare two sets of ordinal data
- Wikipedia [Spearman's Rank Correlation](https://en.wikipedia.org/wiki/Spearman%27s_rank_correlation_coefficient)
- STHDA [Correlation Tests in R](http://www.sthda.com/english/wiki/correlation-test-between-two-variables-in-r)
- R [cor function](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/cor)
