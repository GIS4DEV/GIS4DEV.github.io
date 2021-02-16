---
layout: lesson
title: Publishing GitHub Pages
purpose: Git version control, website publishing with GitHub pages and Jekyll themes
---

## Git

Lost documents? Nightmares from merging sloppy revisions from your team? Group member accidentally ruins your project the night before a presentation? Documents proliferating with names like `thesis_final_final2_final3_soseriouslythefinaldraft.docx`? GO ON, [GIT!](https://git-scm.com/) rediculously outdated and unreliable file systems for managing projects and false sense of recycle bin security, and go back to the floppy disks and CD-RW drives where you came from. Try not to hit `SHIFT + DEL` on your way [outta here!](https://www.youtube.com/c/fallontonight/search?query=go%20on%20git)

- [Git](https://git-scm.com/) is open-source software code for using version control for digital repositories and facilitating collaboration.
- [Git](https://git-scm.com/) can be run from a command line shell or from a simple GUI (graphical user interface), or from a third-party program. 
- [GitHub](https://github.com) is one of many proprietary companies offering services implementing Git, making it more convenient to use and providing web servers for backing up and sharing repositories.
  - [GitHub](https://github.com) is a popular platform for hosting open-source software projects, including [QGIS](https://github.com/qgis/QGIS).
  - The [GitHub](https://github.com) web application provides many of Git's editing and version control features without downloading any sofware.
  - GitHub also has its own [Desktop Application](https://desktop.github.com/).
- RStudio allows you to manage projects with [Git version control](https://support.rstudio.com/hc/en-us/articles/200532077-Version-Control-with-Git-and-SVN).
- Software Carpentry has a free workshop, [Version Control with GIT](https://swcarpentry.github.io/git-novice/)

## GitHub Pages

- GitHub has a [Markdown](https://guides.github.com/features/mastering-markdown/) language for writing and formatting everything from Readme documents to Wikis, Issues, and even webpages. Read and bookmark this guide: https://guides.github.com/features/mastering-markdown/
- [GitHub Pages](https://docs.github.com/en/github/working-with-github-pages) is a service running on GitHub's servers that can transform your Markdown `.md` files into websites.
- Each GitHub account can easily create a website by creating a repository named `username.github.io` where `username` is your GitHub user name.
  - For example, `GIS4DEV.github.io` is the repository serving this website for the `GIS4DEV` organization.
  - Here is GitHub's documentation on [Working with GitHub Pages](https://docs.github.com/en/github/working-with-github-pages)
- GitHub pages are formatted into websites using [Jekyll](https://jekyllrb.com/) themes
  - Here's a [list of themes](https://github.com/pages-themes) supported by GitHub without even copying the theme's files to your own repository. Each theme has a repository with additional documentation on how to use and customize the theme.

## Fancier Options

You can develop a more advanced sites customized for portfolios, blogging, documentation, etc. by first forking or cloning a Jekyll template. Some of these work directly with GitHub pages (building the site remotely on GitHub's servers), while others will require installing requisite software on your own computer to build the site locally. Here are some places to start:

- https://jekyllrb.com/ home of the Jekyll project, with good documentation and tutorials
- https://www.smashingmagazine.com/2014/08/build-blog-jekyll-github-pages/ a quick introduction and start-up guide
- https://github.com/barryclark/jekyll-now this theme is easy to fork to start your own pages repository, and the readme contains step-by-step instructions for doing so
- https://bookdown.org/yihui/blogdown/ Yihui Xie's book explains the R Blogdown / Hugo / Netlify stack for GitHub pages using R-Studio and integrating visualizations and apps built in R. Bonus: it's very similar to [Bookdown](https://bookdown.org/) for creating publications with your research in R.
