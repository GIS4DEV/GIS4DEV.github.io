---
layout: lesson
title: Climate Vulnerability in Malawi
purpose: "read and critique a model of climate vulnerability in Malawi in light of theory on uncertainty"
format: lecture
---

## Reading

1. Malcomb, D. W., E. A. Weaver, and A. R. Krakowka. 2014. Vulnerability modeling for sub-Saharan Africa: An operationalized approach in Malawi. *Applied Geography* 48:17–30. DOI:[10.1016/j.apgeog.2014.01.004](https://doi.org/10.1016/j.apgeog.2014.01.004)
2. Tate, E. 2013. Uncertainty Analysis for a Social Vulnerability Index. *Annals of the Association of American Geographers* 103 (3):526–543. DOI:[10.1080/00045608.2012.700616](https://doi.org/10.1080/00045608.2012.700616).

Handout: [vulnerability-model-uncertainty](/assets/vulnerability-model-uncertainty.pdf)

## Reading


Our next GIS analysis challenge is to reproduce the Malcomb et al (2014) paper cited above. Our first task in doing so is to undertand the data and methods applied in this paper to the fullest extent and greatest detail possible, before we study and improve upon an implementation of the methods in R.

To this goal, please take notes on:
- All data sources and variables used
- All analytical steps taken, e.g. by drafting a workflow diagram for the paper's methods
- Any information we can use to verify our results as we reproduce the paper. For example, descriptive statistics, quantitative results, or mapped results.

In addition, you may want to think about the **construct validity** of the paper in terms of the relationship between theoretical concepts and the quantitative/spatial measurements and analytical tools used to represent the concepts in GIS.

In small groups, aim to have a complete workflow for the paper's methodology as a markdown text document by Wednesday, April 14. This workflow should be based on information in the paper only, *without looking at any of the data*.




## Analysis

As you read Tate (2013), consider the following:

- Which of the model structures described by Tate was used in Malcomb et al (2014)?
- What decisions were made by Malcomb et al (2014) at each of the steps illustrated by Tate in Figure 1, and elaborated in the *Sources of Uncertainty* section?
- Does Tate give you any ideas about how to evaluate your reproduction of the Malcomb et al (2014) study in terms of:
  - sources of uncertainty (never hurts to [double-check](https://youtu.be/tj7RlQdF25A))
  - methods to compare your results with the orginial study results

Write down your notes as you read and as we discuss the paper in class so that you can use them in your report on the Malcomb et al (2014) reproduction. You don't need a seperate blog post for this, but you do need to learn from and cite Tate's paper in your report on the Malcomb et al (2014) reproduction.

Add to the **original study** information in your replication report your interpretation on the type of vulnerability model Malcomb et al (2014) have used. Add to the **discussion** section of your replication report any important sources of uncertainty you have learned about with regards to the Malcomb et al (2014) study.

## Back Story

This type of work is getting heated, with articles & responses in the Annals of the American Association of Geographers:

Rufat, S., E. Tate, C. T. Emrich, and F. Antolini. 2019. How Valid Are Social Vulnerability Models? Annals of the American Association of Geographers 109 (4):1131–1153. DOI:[10.1080/24694452.2018.1535887](https://doi.org/10.1080/24694452.2018.1535887).

Flanagan, B., E. Hallisey, J. D. Sharpe, C. E. Mertzlufft, and M. Grossman. 2020. On the Validity of Validation: A Commentary on Rufat, Tate, Emrich, and Antolini’s “How Valid Are Social Vulnerability Models?” Annals of the American Association of Geographers 0 (0):1–6. DOI:[10.1080/24694452.2020.1857220](https://doi.org/10.1080/24694452.2020.1857220).

Rufat, S., E. Tate, C. T. Emrich, and F. Antolini. 2020. Answer to the CDC: Validation Must Precede Promotion. Annals of the American Association of Geographers 0 (0):1–3. DOI: [10.1080/24694452.2020.1857221](https://doi.org/10.1080/24694452.2020.1857221).

## Big Code

Serge Rey just gave a great talk at the AAG Annual Meeting on [Big Code](https://aag.secure-abstracts.com/AAG%20Annual%20Meeting%202021/sessions-gallery/27052) in which he referenced the importance of [code as text](02b_showmethecode.md), discussed issues of inclusivity and algorithmic bias in spatial analysis at length, and considered the potential for open source spatial analysis code to become a means for co-production of algorithmic knowledge with communities that have historically been excluded from the field (a very white male crowd).
