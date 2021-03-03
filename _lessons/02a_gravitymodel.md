---
layout: lesson
title: Gravity Model in QGIS
purpose: "review the gravity model of spatial interaction and automate it in QGIS graphic modeler"
---

Do you remember the gravity model of spatial interaction from *human geography with GIS*? If not, you may review the model here:

- [Concept Handout](assets/gravity_model.pdf)
- [Concept Video](https://midd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=20d7f901-2934-4e46-83d7-aba401081120)
- [Worked Example Video](https://midd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=2cb54be6-c56c-486f-a3ea-aba4010a2520)
- [Sample Data](https://geography.middlebury.edu/jholler/data/k_healthgeog.zip)

## Afternoon Lecture

Reminder: it's best if we keep all of our technical questions in one place: [issues](https://github.com/GIS4DEV/GIS4DEV.github.io/issues) There are already some useful questions! I recieve an email notificaton when a new question is posted, and you can as well if you watch the respository: ![watch repository](assets/watch.png)
- Discuss the purpose / benefit of creating models
- Sketch up what the GUI (graphical user interface) for a gravity model should look like
- Draw a workflow diagram for implementing a gravity model
- Honor code: don't share tool with current geog0120 students.

## Lab

Our first iteration of the gravity model should be able to create service regions composed of input features. Input features are assigned to the service region of the target feature for which they have the greatest potential interaction. The user should be able to customize how many (*k*) target features to consider for each input feature, as well as the coefficients for input weights, target weights, and the friction of distance.

### Gravity model graphic model challenges

* Remember to convert `meters` to `kilometers`
* Don't allow for inputs with weights of `0`
* Don't allow for edge case of a distance of `0` in case a town centroid is directly coincident with a hospital.
  * Perhaps make the minimum distance `1`?
* Allow the user to include exponents (i.e. the formula can be `(inputWeight)^λ * (targetWeight)^α / (distance)^β
  * Need to add optional `lambda`, `alpha`, and `beta` inputs to the model.
  * Try making them **advanced** inputs, where `lambda` and `alpha` have default values of `1` and `beta` has default value of `2`
  * See the gravity model and formula in Rodrigue's [*The Geography of Transport Systems*](https://transportgeography.org/contents/methods/spatial-interactions-gravity-model/)
* Force the algorithm to always use geodesic distance measurements
* Create a seperate algorithm for preprocessing hospital data
  * Exclude hospitals that do not have a normal ICU for public use (e.g. psychiatric or military hospitals)
  * Aggregate hospitals by the town or zcta in which they are found, resulting in one point for the hospital location of each town.
  * The single point should be in the center of the hospital locations and contain the total number of beds for all the hospitals in the town.


### Data sources

* I have seperately compiled population by town in New England and Middle Atlantic states using [TidyCensus](https://walker-data.com/tidycensus/) in R based on the American Community Survey 2018 5-year Average. The file is in the geopackage format here: [netown.gpkg](assets/netown.gpkg)
* Hospital Data:  https://hifld-geoplatform.opendata.arcgis.com/datasets/6ac5e325468c4cb9b905f1728d6fbf0f_0
go to the data source: services1.arcgis.com 
ultimately the server link is: https://services1.arcgis.com/Hp6G80Pky0om7QvQ/ArcGIS/rest/services/Hospitals_1/FeatureServer 
for ArcGIS Feature Service in QGIS
  - pay attention to hospitals with missing information, that are closed, or that may be specialized for military or psychiatric purposes.
* Dartmouth Health Care atlas boundary files: https://atlasdata.dartmouth.edu/downloads/supplemental#boundaries 
  - be sure to follow their terms of use: https://atlasdata.dartmouth.edu/terms_of_use 
  - use the hospital service area boundaries, not the larger referral regions
* Zip Code Tabulation Areas (ZCTA), the basis of the Dartmouth Health Atlas Hospitial Service Areas are very unfortunately not downloading from the US Census webpage right now: https://www.census.gov/geographies/mapping-files/time-series/geo/carto-boundary-file.2018.html




