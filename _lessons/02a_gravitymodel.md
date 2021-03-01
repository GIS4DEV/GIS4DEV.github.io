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

In our afternoon lecture time, our tasks will be to:

- discuss the purpose / benefit of creating models
- sketch up what the GUI (graphical user interface) for a gravity model should look like
- draw a workflow diagram for implementing a gravity model

Our first iteration of the gravity model should be able to create service regions composed of  input features. Input features are assigned to the service region of the target feature for which they have the greatest potential interaction. The user should be able to customize how many (*k*) target features to consider for each input feature, as well as the coefficients for input weights, target weights, and the friction of distance.

Reminder: it's best if we keep all of our technical questions in one place: [issues](https://github.com/GIS4DEV/GIS4DEV.github.io/issues) There are already some useful questions! I recieve an email notificaton when a new question is posted, and you can as well if you watch the respository: !(watch repository)[assets/watch.png]
