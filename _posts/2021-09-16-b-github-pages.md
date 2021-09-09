---
layout: lesson
title: GitHub as a Research and Publishing Tool
purpose: "publish a website with GitHub, Jekyll, and Markdown"
format: lab
---

## Learning Goals

- Understand purpose and concepts for Git version control
- Learn to write in markdown
- Learn to set up and manage a GitHub Pages repository with Jekyll

## Expectations

- Publish a GitHub pages site

## Instructions

- [video tutorial playlist](https://midd.hosted.panopto.com/Panopto/Pages/Sessions/List.aspx?folderID=42703aa9-d7bd-4189-bb1d-acd800ef84b5)
- [merge changes from main branch to your copy on GitHub](https://midd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=584ec2bf-b7af-4aab-aa25-acef0043a9db)
- *note*: I need to review/revise this playlist to integrate branches, diffs, versioning

## Git

Lost documents? Nightmares from merging sloppy revisions from your team? Group member accidentally ruins your project the night before a presentation? Documents proliferating with names like `thesis_final_final2_final3_soseriouslythefinaldraft.docx`? Can't reproduce your own research when your thesis committee asks a question about what you did? "GO ON, [GIT!](https://git-scm.com/)", ridiculously outdated document file systems and recycle bin fail-safe let-downs, and go back to the floppy disks and CD-RW drives where you came from. Try not to hit `SHIFT + DEL` on your way [outta here!](https://www.youtube.com/c/fallontonight/search?query=go%20on%20git)

![Failing to print THESISFINALV2.pdf](/assets/thesis-final-v2.jpg) |
 :-: |
*Don't be this student failing to print FINAL V2 overnight during finals week* |

- [Git](https://git-scm.com/) is open-source software code for using version control for digital repositories and facilitating collaboration.
- [Git](https://git-scm.com/) can be run from a command line shell or from a simple GUI (graphical user interface), or from a third-party program.
- [GitHub](https://github.com) is one of many proprietary companies offering services implementing Git, making it more convenient to use and providing web servers for backing up and sharing repositories.
  - [GitHub](https://github.com) is a popular platform for hosting open-source software projects, including [QGIS](https://github.com/qgis/QGIS).
  - The [GitHub](https://github.com) web application provides many of Git's editing and version control features without downloading any software.
  - GitHub also has its own [Desktop Application](https://desktop.github.com/).
- RStudio allows you to manage projects with [Git version control](https://support.rstudio.com/hc/en-us/articles/200532077-Version-Control-with-Git-and-SVN).
- Atom integrates [GitHub for Atom](https://github.atom.io/)
- Software Carpentry has a free workshop, [Version Control with GIT](https://swcarpentry.github.io/git-novice/)

## GitHub Pages

- GitHub has a [Markdown](https://guides.github.com/features/mastering-markdown/) language for writing and formatting everything from Readme documents to Wikis, Issues, and even webpages. Read and bookmark this guide: https://guides.github.com/features/mastering-markdown/
- [GitHub Pages](https://docs.github.com/en/github/working-with-github-pages) is a service running on GitHub's servers that can transform your Markdown `.md` files into websites.
- Each GitHub account can easily create a website by creating a repository named `username.github.io` where `username` is your GitHub user name.
  - For example, `GIS4DEV.github.io` is the repository serving this website for the `GIS4DEV` organization.
  - Here is GitHub's documentation on [Working with GitHub Pages](https://docs.github.com/en/github/working-with-github-pages)
- GitHub pages are formatted into websites using [Jekyll](https://jekyllrb.com/) themes
  - Here's a [list of themes](https://github.com/pages-themes) supported by GitHub without even copying the theme's files to your own repository. Each theme has a repository with additional documentation on how to use and customize the theme.
- **FYI:** GitHub's servers rebuild your website every time you commit changes to your `.github.io` repository. This usually happens very quickly, but sometimes takes *up to ten minutes*. GitHub Pages makes it very easy to publish websites, but it does take some patience to see your commits reflected in the website. 'F5' is for *refresh*!

## Text Editors

There is are huge up-side to using a nice text editor:
- keeps files simple (without adding formatting marks like Word does)
- format text as code to better see what you're doing and find errors
- I highly recommend [Atom](https://atom.io/) for the best Markdown editing and GitHub integration
- Start every sentence or major sentence clause on a new line for clarity in Git version control
- Line break: two spaces at the end of a line
- New paragraph: blank line
- Use the Markdown Preview package to preview rendered markdown with `Ctrl + Shift + M`
  - Disable the break on single new line option
  - Enable the Use GitHub style option
- When writing narrative, autocomplete can become annoying. Go to File --> Settings --> Packages --> Core Packages --> autocomplete-plus --> disable `show suggestions on keystroke`. You can still get suggestions with keyboard shortcut `Ctrl+Space`

## Template Customization

Virtually every aspect of a Jekyll template can be customized.
If you want to do so, copy individual files that you want to customize from the original Jekyll repository, so that your local copy will override the template.
Alternatively, clone the entire repository to your own local version and customize from there.

## Fancier Options

You can develop a more advanced sites customized for portfolios, blogging, documentation, etc. by first forking or cloning a Jekyll template. Some of these work directly with GitHub pages (building the site remotely on GitHub's servers), while others will require installing requisite software on your own computer to build the site locally. Here are some places to start:

- Home of the [Jekyll project](https://jekyllrb.com/), with good documentation and tutorials
- A quick [magazine article](https://www.smashingmagazine.com/2014/08/build-blog-jekyll-github-pages/) introduction and start-up guide
- The [Jekyll Now](https://github.com/barryclark/jekyll-now) theme is easy to fork to start your own pages repository, and the readme contains step-by-step instructions for doing so
- [Yihui Xie's Blogdown book](https://bookdown.org/yihui/blogdown/) explains the R Blogdown / Hugo / Netlify stack for GitHub pages using RStudio and integrating visualizations and apps built in R. Bonus: it's very similar to [Bookdown](https://bookdown.org/) for creating publications with your research in R.

## Essential Git Commands

- Command line Git [cheat sheet](https://education.github.com/git-cheat-sheet-education.pdf)
- GitHub [cheat sheet](https://training.github.com/downloads/github-git-cheat-sheet.pdf)

- `Stage`
- `Commit`
- `Revert changes`
- `Push`
- `Pull`
- `Branch`
- `Clone`
- `Fork`
- `.gitignore`

## Cautions with Git

- Git and GitHub are not designed to handle large files `>100mb`
- Before working, always make sure that you have `pulled` the most recent `commits`
- Once `staged` changes are `committed` together, they are bundled for purposes of `pushing` and `reverting`. In other words, to undo one of the changes, you must undo them all.
- Therefore, `commit` frequently.
- Once finished, always remember to `push` your latest commits.
