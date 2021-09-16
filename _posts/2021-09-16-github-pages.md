---
layout: lesson
title: GitHub as a Research and Publishing Tool
purpose: "publish a website with GitHub, Jekyll, and Markdown and learn purpose and concepts for Git version control"
format: workshop
date: 2021-09-16 13:30
---

## Expectations

- Publish a GitHub pages site with a main page and one blog post for next Tuesday

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
- [GitHub](https://github.com) is one of many companies offering services implementing Git, making it more convenient to use and providing web servers for backing up and sharing repositories.
  - [GitHub](https://github.com) is a popular platform for hosting open-source software projects, including [QGIS](https://github.com/qgis/QGIS).
  - The [GitHub](https://github.com) web application provides many of Git's editing and version control features without downloading any software.
  - GitHub also has its own [Desktop Application](https://desktop.github.com/).
- RStudio allows you to manage projects with [Git version control](https://support.rstudio.com/hc/en-us/articles/200532077-Version-Control-with-Git-and-SVN).
- Atom integrates [GitHub for Atom](https://github.atom.io/)
- QGIS code is stored in a GitHub Repository: [https://github.com/qgis/QGIS](https://github.com/qgis/QGIS)
  - including a forum for [Issues](https://github.com/qgis/QGIS/issues) like bug reports and feature requests.
  - and [pull requests](https://github.com/qgis/QGIS/pulls) containing proposed revisions to the QGIS source code
  - Issues and Pull Requests are the principle means by which the open source community contributes to the QGIS projects
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

### Create your own GitHub Page

- Log in to [GitHub.com](https://github.com)
- Go to `+` add menu at the top-right, and `New Repository`
- set the repository name to `username.github.io` where `username` is your GitHub user name
- set the description to something like "profile of open GIS work"
- Choose a license so that other students and researchers may use your work. The `BSD` and `MIT` licenses are normal open source licenses, while the `GNU` license is a copyleft license restricting future use to equally open source and free work.
- `Create repository`
- Go to the `Settings` menu and `Pages` and then `Choose a theme`
- Once you choose a theme, this will create a `_config.yml` file in your repository with a `theme` variable indicating which theme you just selected. This can be changed later without re-coding all of your content!
- Navigate to your repository and use the `Add file` menu to `create new file` named `index.md` (`md` is for markdown)
  - by default, websites will load an `index` page if you don't specify a file in the address
- Try typing in some content as follows:

```markdown
{%- raw -%}
---
layout: default
title: Main Page
---

# This is my page header

Leave blank lines between paragraphs, tables, lists, etc.
Start sentences on new lines.
They will render seamlessly into paragraphs.
Add two blank spaces at the end of a sentence  
if you want a new line.

- bullet list first item
- bullet list second item

1. numbered list first item
1. numbered list second item

The course website is found [here](https://gis4dev.github.io).

Here is some *italicized* text and some **bold text**.
{% endraw %}
```

- then commit the changes, giving a very brief commit message and description
- try to view your website in a browser with the https://username.github.io address.

## GitHub Desktop

It will be much easier to edit page content on your local computer using a text editor. To set this up, we'll use [GitHub Desktop](https://desktop.github.com/) to clone your repository to the local computer and [Atom](https://atom.io/) to edit content. Please install both programs.

- In GitHub Desktop, please go to File --> Options and add your account information.
- Then go to File --> Clone repository to download your repository to the local computer.
  - pay attention to the folder to which you are cloning...
  - Students in geog323 can also clone the `GIS4DEV/literature` repository
- Once the repository is cloned, open Atom and `add project folder`, choosing your cloned Repository
- Open up `index.md`
- Go to `Packages` --> `Markdown Preview` or `Ctrl + Shift + M` to see your markdown stylized.
- In the `Packages` --> `Markdown Preview` menu, I suggest:
  - Disable the break on single new line option
  - Enable the Use GitHub style option
- Try making some revisions to your page, e.g. by creating a table:

```markdown
first column | second column | third column
:----------- | :-----------: | -----------:
left justified | centered | right justified
new row |  | left blank cell
```

- Save the file
- Return to GitHub Desktop
- You should notice that GitHub has detected changes in your repository and automatically `staged` the changes in a list. Clicking on individual files shows a `diff` of the changes with deletions in red and additions in green.
- Down below, type a commit message, then `commit` the changes to the local repository.
- To sync with your online GitHub content, `push` the changes.
- Revisit or refresh your website in a browser. It may take up to 10 to 15 minutes for the changes you just made to be reflected online.

## Keeping work in sync between GitHub.com and local repositories

To see how GitHub works when you are editing with more than one version of a repository, lets return to github.com

- Edit your index.md file
- add or revise some of the text in a small, irrelevant way
- commit the change
- return to GitHub Desktop
- `Fetch origin`
- now your local files should be updated!
- in Github Desktop, go to the `History` of your Repository
- right-click your most recent commit and `revert changes`
- You should see that your most recent changes made on GitHub.com have been undone. This may require reloading the markdown document in Atom.
- **caution** if files are open in Atom, do not delete or rename them outside of Atom.
- **reminder** always `fetch` changes from GitHub.com before you start working locally, especially if you use multiple computers.
- **reminder** always remember to `commit` and `push` changes when you are finished working locally

- When writing narrative in Atom, autocomplete can become annoying. Go to File --> Settings --> Packages --> Core Packages --> autocomplete-plus --> disable `show suggestions on keystroke`. You can still get suggestions with keyboard shortcut `Ctrl+Space`

## Add basic customization and navigation to your site

- open `_config.yml` in atom
- add additional parameters:

```YAML
theme: minimal
title: website title
description: short website description
```

- create a folder named `_layouts`
- create new file named `page.html` to serve as a page _layout
- enter the following code in `page.html` to add a Title and Main Page link to all of your pages:

```markdown
{%- raw -%}
---
layout: default
---
<h1>{{ page.title }}</h1>

{{content}}

<p align=center><a href="https://username.github.io">Main Page</a></p>
{% endraw %}
```

- If you're curious, header information in between `---` lines is [YAML Front Matter](https://jekyllrb.com/docs/front-matter/), code inside `< >` tags is [HTML](https://developer.mozilla.org/en-US/docs/Web/HTML), and code inside `{%- raw -%}{{ }}{% endraw %}` is [liquid](https://jekyllrb.com/docs/liquid/).

## Add a second page and link it

- create a new file named `open-giscience.md` in the root folder of your site
  - conventionally, Jekyll files lower case letters and dashes for file names
- add initial code as follows:

```markdown
{%- raw -%}
---
layout: page
title: Open GIScience
---

I intend to write a blog post here before next class!
{% endraw %}
```

- Save the file.

## Add link to your new page

- Open your `index.md` file.
- Add a link to your new page with this code: `(Open GIScience)[open-giscience]`
- You might want to start an index for your pages as bulleted or numbered lists, or as a table.
- Try **saving** all files, **committing** the changes, and **pushing** to GitHub to see your site!
- **reminder** you have the Markdown Preview option in Atom for a first guess at how your pages will appear, but without the additional layouts, liquid tags, and template of your full site.

## Add an assets folder

- Jeckyll looks to an `assets` folder for images and other content, so lets create one now.
- add an `assets` folder inside your repository's root directory
- save an image into the `assets` folder, e.g. one of the [github logos](https://github.com/logos)
- edit your page to include the image, e.g. `![GitHub Logo](assets/GitHub-Logo.png)`

![GitHub Logo?](assets/GitHub-Logo.png)

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
