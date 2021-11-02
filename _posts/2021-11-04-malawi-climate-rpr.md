---
layout: lesson
title: Malawi Climate Vulnerability Reproduction
purpose: "reproduce a climate vulnerability model of Malawi"
format: workshop
date: 2021-11-04 13:30
---

In this workshop we will:

- complete a reproduction of Malcomb et al (2014)
- compare reproduction results with original results
- evaluate and critique sources of error and uncertainty in the original study,
particularly with regards to reproducibility

The learning goals are to:

- gain experience executing spatial research in R / RStudio
- gain practice reading research publications to understand their methodologies
- critically review research for error, uncertainty, and reproducibility

## Procedure

- **Fork** the [RPr-Malcomb-2014](https://github.com/HEGSRR/RPr-Malcomb-2014) repository to your own GitHub account
- **Clone** the repository to your local computer
- Review the **data sources** and **metadata** for the reproduction study.
- Review the **pre-analysis plan** for the reproduction study.
- **Study** and **execute** the reproduction study code using RStudio. **Take notes** for yourself comparing the code to your own workflow for the research paper, identifying similarities and differences between the two.

## Final Product

Your final product from the workshop should be an extended *blog post* using the results and experience of this reproduction study to evaluate Malcomb et al (2014) in the framework of Tate (2013)'s assessment of error and uncertainty in spatial vulnerability models.

The blog post should make use of:
- The Malcomb et al (2014) publication
- The Tate (2013) publication (see [next lesson](/2021/11/09/vulnerability-uncertainty))
- The Malcomb et al (2014) https://github.com/HEGSRR/RPr-Malcomb-2014

### Georeferencing Maps

In the spring 2021 semester, we learned how to digitize results from the map figures in the Malcomb et al publication for comparison with our attempted exact reproduction results.
This is no longer a course requirement, but it does contain useful skills for reference.

Here is a [video playlist](https://midd.hosted.panopto.com/Panopto/Pages/Sessions/List.aspx?folderID=9e5891dc-42ab-405e-833b-ad0c0154f900) of the procedure.

The procedure involved:

- Save `.jpg` images of maps from the publication. This can be achieved by saving images from the PDF, screen capture, or saving supplementary data files from the online publication.
- Load reference data in QGIS, and try to reproject the reference data to the same map projection as the published maps.
- `Georeference` the map images with the [georeferencer plugin](https://docs.qgis.org/3.16/en/docs/user_manual/working_with_raster/georeferencer.html). This procedure involves digitizing a set of control points matching the map image to a spatial reference system, warps the map image to match a spatial reference system, applies spatial reference metadata to the image.
- Load or create a set of vector polygons equivalent to the spatial units in the map image
- If necessary, apply a negative buffer distance to avoid confusion from the boundary colors
- Summarize the color(s) in the map image by spatial units using `Zonal Statistics`
- Classify the colors using `CASE` statements in `Field Calculator`.
- Manually correct any misclassified values
