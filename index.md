---
layout: default
title: Open Source GIScience
---

# Fall 2021 Open Source GIScience

*note*: There is a placeholder for each day of the semester, but many lessons will still be revised as we approach them.

Meeting | Lesson
------- | ------
{% for post in site.posts reversed -%}
{%- if post.format -%} {{ post.date | date: '%b-%d' }} {{ post.format | capitalize }} {% endif %} | <a href="{{ post.url }}" {% if post.format == "break" %} style="color: black" {% endif %}>{{ post.title }}</a>
{% endfor %}

## Members of Fall 2021

[emilyzhou112](https://emilyzhou112.github.io/) ~ [emwaugh](https://emwaugh.github.io/) ~ [Liam-W-Smith](https://Liam-W-Smith.github.io/) ~ [stonecastin](https://stonecastin.github.io)

## Members of Spring 2021

[daptx](https://daptx.github.io)
~ [emmab725](https://emmab725.github.io)
~ [majacannavo](https://majacannavo.github.io)
~ [emmaclinton](https://emmaclinton.github.io)
~ [vinfalardeau](https://vinfalardeau.github.io)
~ [jafreedman12](https://jafreedman12.github.io)
~ [evankilli](https://evankilli.github.io)
~ [brookelaird](https://brookelaird.github.io)
~ [alandaux](https://alandaux.github.io)
~ [gsmarshall](https://gsmarshall.github.io)
~ [stevenmontilla](https://stevenmontilla.github.io)
~ [jackson-mumper](https://jackson-mumper.github.io)
~ [nicknonnen](https://nicknonnen.github.io)
~ [sanjana-roy](https://sanjana-roy.github.io)
~ [mtango99](https://mtango99.github.io)
~ [avillanueva1005](https://avillanueva1005.github.io)
~ [hrigdon98](https://hrigdon98.github.io)

## Members of Fall 2019

[pdickson2](https://pdickson2.github.io)
~ [bendohan](https://bendohan.github.io)
~ [chriskgernon](https://chriskgernon.github.io)
~ [sarahhaedrich](https://sarahhaedrich.github.io)
~ [rmkelley](https://rmkelley.github.io)
~ [Ian8VT](https://Ian8VT.github.io)
~ [caseylilley](https://caseylilley.github.io)
~ [kazuto-nishimori](https://kazuto-nishimori.github.io)
~ [celiaripple](https://celiaripple.github.io)
~ [tianshengs](https://tianshengs.github.io)
~ [kufreu](https://kufreu.github.io)
~ [marcovg](https://marcovg.github.io)
~ [tori-koontz](https://tori-koontz.github.io)
~ [cameronw-16](https://cameronw-16.github.io)
~ [kgrantsasson](https://github.com/kgrantsasson/kgrantsasson.github.io)
~ [derrickburt](https://derrickburt.github.io)

## Resources and previous courses

- Reproducibility and Replicability in Geography: [HEGSRR.github.io](https://HEGSRR.github.io)
- Spring 2021 [course syllabus and lessons](2021-spring)
- Fall 2019 [course syllabus and lab manual](/assets/OpenSourceGIScience2019.pdf) and [worked examples](2019-fall)
- Open Source GIS for Development (Spring 2014, Spring 2015, and Spring 2018) content can be found in the [GIS4DEV course manual](/assets/GIS4DEV.pdf) and [Q&A respository](https://github.com/GIS4DEV/Q-and-A)
- University Consortium for GIS (UCGIS) [2020 Symposium](https://www.ucgis.org/symposium-2020) [Presentation Slides](/assets/teachingReproducibility.pdf)
- Using GitHub for [teaching & research](github-academics)
