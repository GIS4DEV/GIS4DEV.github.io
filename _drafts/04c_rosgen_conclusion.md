---
layout: lesson
title:  Concluding the Rosgen Replication
purpose: "use a template to report on a reproduction study"
---

Friday, March 19 and Monday March 22

## Reading

The following paper will help contextualize our work on reproducing a Rosgen Classification method, and should serve as an important reference in your lab report (no separate blog response needed).

  1. Kasprak, A., N. Hough-Snee, T. Beechie, N. Bouwes, G. Brierley, R. Camp, K. Fryirs, H. Imaki, M. Jensen, G. O’Brien, D. Rosgen, and J. Wheaton. 2016. The blurred line between form and process: A comparison of stream channel classification frameworks ed. J. A. Jones. *PLOS ONE* 11 (3):e0150293. https://dx.plos.org/10.1371/journal.pone.0150293.

**NEW 3/18** Which parts of Kasprak et al (2016) should be helpful in report writing?
- *Introduction* discusses motivation for, and challenges of, river classification
- *Methods*
  - starts with two sections describing geographic context of John Day Watershed and characteristics of the CHaMPS data
  - compares information used in four different classification techniques in table 2
  - briefly reviews the Rosgen classification system. Are there differences from our methods?
  - details of the other three classification systems are less important for us. It's just interesting to note that:
    - The River Styles Framework examines much longer sections of river than the Rosgen reaches
	- The Natural Channel Classification framework tries to infer what a natural/undisturbed channel would look like without human influence
	- The Statistical Classification framework is an inductive data-driven approach, with no predetermined hierarchical decision tree like Rosgen and the other two
	- a quick tabular comparison of the systems is offered in table 2	
- *Results*
  - *Rosgen classification system* section gives you a sense of how representative your individual site was in a one paragraph summary
  - *Comparison of framework agreement* section gives insight into sources of uncertainty
- *Discussion*
  - Find your site in Table 5 to see how it was classified by the four techniques
  - *Why do classification frameworks differ?* section gives insight into sources of uncertainty
  - *Form and process in channel classification* section gives insight into sources of uncertainty
  
## Friday Mach 19 Agenda

- At the beginning of class, we will spend some time interpreting the terrain data and discussing sources of error and uncertainty.
- Remaining time will be for working on the GIS Analysis.

Resources:
- [The Bare Earth](https://wadnr.maps.arcgis.com/apps/Cascade/index.html?appid=36b4887370d141fcbb35392f996c82d9)
- [River Bathymetry Toolkit](https://essa.com/explore-essa/tools/river-bathymetry-toolkit-rbt/)

I added the [relative elevation model](https://github.com/GIS4DEV/RE-rosgen/raw/main/procedure/code/relative_elevation.gxm) to the RE-Rosgen GitHub repository if you'd like to use it.
- One input parameter is the start point for the drain. You can get this by right-clicking at the beginning of your stream on the map in GRASS and copying the coordinates. Then just paste the coordinates into the model as you run it.
- The model assumes that you have already created the relief map (in the first model).
- The model contains one more addon function: `r.hydrodem`
- Let me know if you try it or have any questions!

## Monday March 22 Agenda

- Convene in the Orchard for lab/office hours time devoted to resolving any outstanding questions/problems with the Rosgen Reproduction.
- As you wrap up the GIS Analysis report, the only new instruction from me will be:
  - strategies for saving and publishing the analysis or
  - response to any issues in or questions about the GIS Analysis

### GIS Analysis Report

Your report is due in the form of a page on your GitHub pages on **March 24 at noon**.  **date pushed back to Wednesday**

A template for this report is found in the rosgen repository: `docs\report\HEGSRR-Replication-Report.md`

Concurrently with the report in your pages repository, commit and push all changes to your rosgen research repository to your GitHub account. 