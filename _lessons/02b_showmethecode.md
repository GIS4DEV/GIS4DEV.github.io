---
layout: lesson
title: Show me the Code, Distance Matrix
purpose: "illustrate the importance of good documentation and open source code"
---

The `Distance Matrix` [algorithm documentation](https://docs.qgis.org/3.16/en/docs/user_manual/processing_algs/qgis/vectoranalysis.html#distance-matrix) says nothing about how it calculates distances!

Watch a [video](https://midd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=855206e6-2da2-4879-b86a-acdf016865e4) of the issue.

Outline with links:
* https://github.com/qgis , search "distancematrix" within the repository
* distance matrix algorithm source code:
https://github.com/qgis/QGIS/blob/f32725658f205af4ac9718d3a3b74f13eaa98d3e/python/plugins/processing/algs/qgis/PointDistance.py
  * line 179: Transforms the target featurs into the source CRS
  * line 182: CRS set to source CRS
  * line 183: Ellipsoid set to context ellipsoid
* distance area class source code: https://github.com/qgis/QGIS/blob/5caa3880ff5e85df9116d191863809c6851644c8/src/core/qgsdistancearea.cpp
  * line 413: converts to meters
  * the only information passed to `qgisdistancearea` is the context ellipsoid and transformation, and the source crs
* another quick source for information about QGIS variables: https://qgis.org/api/classQgsProcessingContext.html
  * there is a `context.ellipsoid()` and a `context.distanceUnit()`, but the distance matrix algorithm never uses `distanceUnit`.
* CONCLUSION
  * DISTANCE MATRIX appears to calculate distance in METERS
  * If the input layer uses a projected coordinate system, that system is used or planar distance calculation
  * If the input layer uses a geographic coordinate system, the project ellipsoid is used for ellipsoidal distance calculation
  uses the projected coordinate system of the input layer, or if the input is in a GCS, it uses ellipsoidal distance. 


