---
layout: lesson
title: "Required Data & Services"
purpose: "register for data and services required for the course"
date: 2021-09-14 09:45
---

## Free and Secret

The following resources are all **free** for you to access.  
They each require **passwords** and/or **secret keys**, and may require **user names**, **project names** or **app names**.  
**Remember** these passwords, secret keys, and names!!!  
**Never** include them in a public post, website, or GitHub repository code.  
Seriously, **remember** them, and **do not make them public**.  
Seriously.

### GitHub

We will use GitHub to organize and publish all of our work in this course.
Please sign up for free account and share the account information with me ASAP.

1. Choose an email address for your GitHub account that you check regularly. Important course updates and communications will be sent to that email. The account is flexible for adding or changing email addresses later.
2. Please sign up for a free GitHub account at [github.com](https://github.com).
3. Add your GitHub name to a this Google Sheet [class roster](https://docs.google.com/spreadsheets/d/1vN8Oks6utWWLtSN9WnaAZlECQyHlyzW_gUngMY4hwk4/edit?usp=sharing) (Middlebury access only)
4. Once I have your GitHub name, I will invite you to the [GIS4DEV](https://github.com/GIS4DEV) GitHub Organization.
5. Accept the invitation!

**note:** add information about new security tokens for command-line Git

### Twitter Developer API

In order to query Twitter data for geospatial research, you will need an approved Twitter **developer account** and a Twitter **app**.

1. See instructions here: [Creating a Twitter App](https://cran.r-project.org/web/packages/rtweet/vignettes/auth.html)
2. The purpose of your `app` can be to research and visualize spatial clustering of Twitter activity during natural disasters, e.g. coastal storms, pandemics, and earthquakes.

### Census API

In order to use R and Python packages for querying Census data, you need an API Key.

1. Sign up for an API key at [api.census.gov/data/key_signup.html](https://api.census.gov/data/key_signup.html)
2. The organization name should be `Middlebury College` and email should be your Middlebury account.
2. Documentation for the Census API's is here: [www.census.gov/data/developers.html](https://www.census.gov/data/developers.html)

### USAID Demographic and Health Surveys Data

*Note*: These instructions are for **current course students only**.
Anyone can request access to DHS Program data, but you should not copy the information below unless you are currently registered in Dr. Holler's course.

1. Go to [https://dhsprogram.com/Data/](https://dhsprogram.com/Data/)
1. Create an account with your college e-mail address
2. Within the Datasets menu, [Create a new project](https://dhsprogram.com/data/dataset_admin/index.cfm?action=createproject)
1. Enter the following information:
**Project Title:** Reproducing a Vulnerability Model of Malawi
**Co-researchers Name:** Joseph Holler
**Co-researchers Email Address:** josephh@middlebury.edu
**Description of Study:** The purpose of this study with Professor Joseph Holler is to reproduce the methods of a published research article: Malcomb, D. W., E. A. Weaver, and A. R. Krakowka. 2014. Vulnerability modeling for sub-Saharan Africa: An operationalized approach in Malawi. Applied Geography 48:17–30. http://dx.doi.org/10.1016/j.apgeog.2014.01.004. The authors of this paper used geocoded DHS surveys for Malawi in 2004 and 2010, in combination with FEWSnet livelihood data and UNEP flood and drought risk data. Following the author's methodology, we plan to download the data using the rdhs package for R and aggregate the data at Malawi's 2nd administrative level: districts. We will be working with a GitHub repository that stores the raw data locally in a directory ignored by the .gitignore file, and only moves the data into a shared and version-controlled directory once it has been aggregated to the District level. This will ensure that the privacy of survey respondents and requirements of data partners are protected, because all of the data will be aggregated into district polygons, as already shown and published in Malcomb et al (2014). The raw individual-level data will be deleted once the analysis is complete by May 31, 2021.
1. Choose Region: Sub-Saharan Africa
1. Click **Show GPS Datasets** at the top-left of the country tables
1. Check **Survey** and **GPS** data for **Malawi**
1. Save selection
1. Read and agree to the conditions of use for the DHS Program datasets and save these conditions for your metadata records.
1. Enter a **Justification for using DHS Program Geographic Datasets:** The research aim is to reproduce Malcomb et al (2014) in which GPS Datasets are used to spatially join DHS Survey data to Malawi's Districts for the purpose of sub-national climate change vulnerability mapping. Therefore, the research will not be reproducible without the geographic datasets.

## Hour of CI

TBD...

- [Hour of CI](https://www.hourofci.org/)

## CyberGISX

- go to [CyberGISX Login](https://cybergisx.cigi.illinois.edu/hub/login)
- Sign in with CyberGISX
- Log on with CILogon
- Choose `Google` as the identity provider / organization
- Login in with your `@middlebury.edu` Google account
