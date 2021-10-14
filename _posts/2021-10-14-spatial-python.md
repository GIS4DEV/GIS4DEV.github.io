---
layout: lesson
title:  Spatial Python
purpose: "gain familiarity with Python's spatial GeoPandas"
format: lecture
date: 2021-10-14 09:30
---

Over the next few weeks, we will:

- Learn to do spatial analysis in Python
- Use cyberinfrastructure
- Reproduce a study of spatial accessibility to COVID-19 health care services in Chicago Illinois (Kang et al 2020)
- Implement modest improvements to the study

## Reproduction Study Context

- Kang et al (2020) describes the analysis and cyberinfrastructure behind the spatial access component of this [Where COVID-19 dashboard for Illinois](https://wherecovid19.cigi.illinois.edu/spatialAccess.html)
- Derrick Burt and Kufre Udoh completed a [reproduction and replication](https://cybergisxhub.cigi.illinois.edu/blog/middlebury-college-students-reproduce-and-replicate-covid-19-health-care-resource-accessibility-study/) of the study
- Based on our feedback, the authors have continued to update the code in the [Jupyter notebook for the study](https://cybergisxhub.cigi.illinois.edu/notebook/rapidly-measuring-spatial-accessibility-of-covid-19-healthcare-resources-a-case-study-of-illinois-usa/) on CyberGISX
- Then we [fixed some bugs](https://github.com/cybergis/COVID-19AccessibilityNotebook/pull/1) and reproduced the study in Spring 2021.
- Finally, Derrick Burt made [significant improvements](https://github.com/HEGSRR/RPr-Kang-2020) for accuracy, reproducibility, and computational efficiency during Summer 2021.

## Enhanced Two Step Floating Catchment Area

- Two step floating catchment (2SFCA) approximates the gravity model
  - developed for modeling access to primary care physicians
  - for each service area, calculate the ratio of services (physicians) to population
  - for each location, sum the service:population ratios
- Enhanced two step floating catchment (E2SFCA)
  - rather than using a single service area for each point of service, calculate three different service areas
  - multiply each service area "ring" by a weight, starting with 1 for the closest, and decreasing for the two further areas

## Technology Context

- [CyberGISX](https://cybergisx.cigi.illinois.edu) is a geospatial cyberinfrastructure project at the [CyberGIS Center for Advanced Digital and Spatial Studies](https://cybergis.illinois.edu/) at the University of Illinois at Urbana-Champaign, funded by the National Science Foundation and directed by Dr. Shaowen Wang. It is set up to run [Juypter notebooks](https://jupyter.org/) using [Python](https://www.python.org/) with a suite of pre-installed packages for data science and spatial analysis.
- CyberGISX is a prime example of [geospatial cyberinfrastructure](https://gistbok.ucgis.org/bok-topics/cyberinfrastructure)
- Jupyter is a prime example of a [computational notebook](https://www.nature.com/articles/d41586-018-07196-1)
- [Pandas](https://pandas.pydata.org/) provides SQL-like database structures and functions
- [GeoPandas](https://geopandas.org/) provides spatial analysis functions
- Much of GeoPandas is based on [Shapely](https://shapely.readthedocs.io) geometry types and functions
- [PySAL](https://pysal.org/) implements advanced spatial analysis and statistics, building off of the GeoPandas package

## References

Kang, J. Y., A. Michels, F. Lyu, Shaohua Wang, N. Agbodo, V. L. Freeman, and Shaowen Wang. 2020. Rapidly measuring spatial accessibility of COVID-19 healthcare resources: a case study of Illinois, USA. *International Journal of Health Geographics* 19 (1):1–17. DOI:[10.1186/s12942-020-00229-x](https://doi.org/10.1186/s12942-020-00229-x).

Luo, W., and Y. Qi. 2009. An enhanced two-step floating catchment area (E2SFCA) method for measuring spatial accessibility to primary care physicians. Health and Place 15 (4):1100–1107. DOI:[10.1016/j.healthplace.2009.06.002](https://doi.org/10.1016/j.healthplace.2009.06.002).

## Spatial data science with python on your own

What if you want to use Python and Jupyter notebooks to practice spatial data science on your local computer, without access to servers like Hour of CI and CyberGISX? You can install [Anaconda](https://www.anaconda.com/) and create a local conda environment including Jupyter notebooks and packages for spatial data science. The `pandas` package provides the database functions you learned to love in `SQL` while the `geopandas` package provides the spatial functions, analogous to `PostGIS`.

## Cheat Sheets

- [Pandas](https://pandas.pydata.org/Pandas_Cheat_Sheet.pdf)
- [DataCamp Cheat Sheets](https://www.datacamp.com/community/data-science-cheatsheets)
