---
layout: page
title: Open Source GIScience Spring 2021
---

# Spring 2021 Open Source GIScience

Most of the questions and solutions this semester were posted in the
[Issues](https://github.com/GIS4DEV/GIS4DEV.github.io/issues) feature for this
pages repository.

## Lessons

<ul>
  {% for lesson in site.lessons %}
    <li>
      <a href="{{ lesson.url }}">{{ lesson.title }}</a>{% if lesson.purpose %}: {{ lesson.purpose }} {% endif %}
    </li>
  {% endfor %}
</ul>
