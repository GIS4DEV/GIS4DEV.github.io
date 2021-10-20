---
layout: lesson
title: COVID-19 Spatial Accessibility Reproduction
purpose: "reproduce COVID-19 spatial accessibility"
format: workshop
date: 2021-10-21 13:30
---

The goal of this lab is to get accustomed to working in a cyberinfrastructure environment with Python, Jupyter notebooks, and GitHub integration. We will do so with the Jupyter notebook published to accompany [Kang et al (2020)](https://doi.org/10.1186/s12942-020-00229-x). The notebook has been published on [CyberGISX](https://cybergisxhub.cigi.illinois.edu/notebook/rapidly-measuring-spatial-accessibility-of-covid-19-healthcare-resources-a-case-study-of-illinois-usa/) and maintained in a [GitHub repository](https://github.com/cybergis/COVID-19AccessibilityNotebook)

By the end of lab, you should have:
- executed the complete notebook
- taken notes and added comments to the code cells and/or content to the markdown cells in the notebook on CyberGISX to understand how the code relates to the publication (i.e. which blocks of code implement which sections of the paper?)
- pushed your changed (annotated) version of the notebook back to your own GitHub repository

Advice:
- Use the [RPr-Kang](https://github.com/HEGSRR/RPr-Kang-2020) version of the repository. It contains some bug fixes in a pending [pull request](https://github.com/cybergis/COVID-19AccessibilityNotebook/pull/1) to the authors from yours truly.
- Use the instructions below to learn how to import a project into CyberGISX and push your changes to GitHub.
- Feel free to team up, but make sure you also run the code in your own account simultaneously.
- You may have to make the notebook **trusted** to see all outputs. This button is in the top-right corner of the notebook.
- Much as in `R`, you can skip around a Jupyter notebook trying to execute different code blocks. However, code blocks often depend on prior code blocks to load packages, define functions, or define or modify data variables.
- The plain text narrative is achieved with `Markdown` blocks, similar to markdown in GitHub or R.
- Given the choice of Processors, Region, Population, and Resource, **keep the default values**. Other options may not function at this time.
- How will this analysis conclude? Sneak a peek [here](2021-05-19-whereCovid19)

Transitioning to next week you should:
- Compare the code repository to the published paper and brainstorm ways in which the code repository could be improved with regards to computational efficiency/speed, reproducibility, uncertainty, errors, cartography, aesthetics, readability...

## Integrating GitHub with CyberGISX

Below I will outline three workflows. Geog 323 students, please just follow the first two. The third is for reference.
1. Cloning a GitHub repository into CyberGISX
1. Making changes on CyberGISX and pushing them to GitHub
1. Pushing a CyberGISX project to a new GitHub repository

**note:** update instructions below with:
- suggestions from Derrick
- new security token Information
- up arrow for previous lines
- `Ctrl+Insert` and `Shift+Insert` key to paste
- concept of using two local machines and GitHub, where 2nd local machine is CyberGISX

### Cloning a GitHub repository into CyberGISX

- **Fork** a python notebook repository into your own GitHub account
- geog 323 students, please fork the [RP-Kang](https://github.com/GIS4DEV/RP-Kang) repository for the Kang et al (2020) paper. This is a forked version of the [original repository](https://github.com/cybergis/COVID-19AccessibilityNotebook) but [fixes some bugs](https://github.com/cybergis/COVID-19AccessibilityNotebook/pull/1).
- If the repository name conflicts with any folders in your CyberGISX server then, rename it.
- Go to your [CyberGISX home page](https://cybergisx.cigi.illinois.edu)
- In the top-right corner, go to `new` and `terminal` to open the Linux command-line terminal.
- Now, we will clone the GitHub repository using the [Linux terminal](https://www.linux.org/) (Linux is an open-source operating system) and [command line Git](https://git-scm.com/book/en/v2/Getting-Started-The-Command-Line). Follow the following commands:
- `ls` : list files and folders
- `cd work` : change the directory to `work`
- `ls` : check to see if there are any folders with an identical name to your repository. If so, rename either the repository or the folder.
- `git clone https://github.com/gituser/RP-Kang`  : where `gituser` is the user or organization name and `RP-Kang` is the repository name. In other words, you need the `URL` of the repository you want to clone.
- `ls` : check to see if the repository has been added.
- If the new directory is all set, you can switch back to your [CyberGISX home page](https://cybergisx.cigi.illinois.edu), and leave the terminal open in another browser tab for convenience.
- Open the `RP-Kang` folder, browse the `data` folder to see what's there (and where)
- Open the `COVID-19Aacc.ipybn` Jupyter notebook.

### Making changes on CyberGISX and pushing them to GitHub

- Make a *discrete set of changes* to your project in the form of (re)organizing folders or files, creating new files, or editing `.ipybn` notebooks and saving them.
- It's best to clear the outputs of your notebook and save it before committing changes. In the notebook menu, go to `Cell` --> `All Output` --> `Clear`
- Open the terminal
- `cd` : to change the directory to the root folder of your project, e.g. you should be inside `RP-Kang` inside `work` to run any `git` commands on your `RP-Kang` repository
- if you need to move up a directory, use `cd ..`
- `git config --global user.email "josephh@middlebury.edu"` : configure your GitHub user name
- `git config --global user.name "josephholler"` : configure your GitHub email
- `git remote get-url origin` : Check the existing remote connection. The connection should point to your own GitHub repository. If it doesn't use the next line to change it!
- `git remote set-url origin https://github.com/gituser/RP-Kang` : Change the remote connection to your own repository, replacing `gituser` with your own GitHub user name.
- `git remote -v` : verify that the change worked
- `git add .` : to add changes from all files or `git add jupyter.ipynb` to add a specific file's changes to the commit, with the example of a Jupyter notebook eponymously named `jupyter`
- `git commit -m "commit description"` : to commit the staged changes, hopefully with a better description than my example
- `git push origin` : to push the commit to GitHub
- You may get a warning from GitHub that command-line authentication will be deprecated. Until then, forge ahead!

### Pushing a CyberGISX project to a GitHub repository

- You can create a project in CyberGISX by copying an existing notebook. E.g. the COVID-19 notebooks are indexed [here](https://cybergisxhub.cigi.illinois.edu/wherecovid-19/) and the Kang et al (2020) notebook is [here](https://cybergisxhub.cigi.illinois.edu/notebook/rapidly-measuring-spatial-accessibility-of-covid-19-healthcare-resources-a-case-study-of-illinois-usa/)
- Each notebook features an `Open with CyberGISX` button, which will copy the notebook into your logged-in [CyberGISX account](https://cybergisxhub.cigi.illinois.edu/registration). **Beware:** if you have already copied the notebook once, you will get inconsistent results with this copy feature. If you must keep two versions of the same notebook, then rename the folder containing the first before making a second copy.
- Go to your [CyberGISX home page](https://cybergisx.cigi.illinois.edu)
- You should see a folder with the notebook name you just copied, e.g. `COVID-19AccessibilityNotebook` containing the `.ipynb` Jupyter notebook and any required data.

Now that the notebook has been copied into your CyberGISX account, you need a GitHub repository for this project.

- Go to [GitHub.com](https://github.com) and start creating a new repository with an easy-to-type and relevant name, e.g. `RP-Kang`
- Copy the new repository's URL. e.g. mine was `https://github.com/josephholler/RP-Kang.git`

Now the harder part: connecting the CyberGISX notebook to your GitHub repository using the Linux terminal and [command line Git](https://git-scm.com/book/en/v2/Getting-Started-The-Command-Line). [Linux](https://www.linux.org/) is an open-source operating system and its file and folder names are case-sensitive.

- In the top-right corner, go to `new` and `terminal` to open the Linux command-line terminal.
- Follow the following commands:
- `ls`  list files and folders
- `cd work`  change the directory to `work`
- `ls`
- `cd COVID-19AccessibilityNotebook`  change the directory to the COVID-19 Notebook
- `git init`  initialize git repository. One exists already, because all of the Git files were copied from the [original repository](https://github.com/cybergis/COVID-19AccessibilityNotebook)
- `git add .` : add all the files to the repository
- `git config --global user.email "josephh@middlebury.edu"` : configure your GitHub user name
- `git config --global user.name "josephholler"` : configure your GitHub email
- `git remote get-url origin` : Check the existing remote connection. The connection should point to your own GitHub repository. If it doesn't use the next line to change it!
- `git remote set-url origin https://github.com/gituser/RP-Kang` : Change the remote connection to your own repository, replacing `gituser` with your own GitHub user name.
- `git remote -v` : verify that the change worked
- `git commit -m "first commit"` : commit the changes, where the description of changes is in quotes. `-m` is for `main branch`.
- `git push origin` : push your changes to GitHub! The command line will ask for your username and password.
- You may get a warning from GitHub that command-line authentication will be deprecated. Until then, forge ahead!

## Helpful References

- Git Commands: [Importing projects to GitHub with command line](https://docs.github.com/en/github/importing-your-projects-to-github/adding-an-existing-project-to-github-using-the-command-line)
- Git Basics: [Git Basics](https://git-scm.com/book/en/v2/Git-Basics-Getting-a-Git-Repository)
- Python package for vector features & analysis: [geopandas](https://geopandas.org/)
- Python package for OpenStreetMap and specifically for network data in OSM: osmnx [documents](https://osmnx.readthedocs.io/en/stable/), [repository](https://github.com/gboeing/osmnx) and [examples repository](https://github.com/gboeing/osmnx-examples), and repository for version [0.11.4](https://github.com/gboeing/osmnx/releases/tag/v0.11.4)
- Python package for network analysis: [networkx](https://networkx.org/)

## Reference

Kang, J. Y., A. Michels, F. Lyu, Shaohua Wang, N. Agbodo, V. L. Freeman, and Shaowen Wang. 2020. Rapidly measuring spatial accessibility of COVID-19 healthcare resources: a case study of Illinois, USA. *International Journal of Health Geographics* 19 (1):1–17. DOI:[10.1186/s12942-020-00229-x](https://doi.org/10.1186/s12942-020-00229-x).
