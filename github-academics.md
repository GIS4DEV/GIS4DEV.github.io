---
layout: page
title: Using GitHub in Academics
---

## Organization

- Create a [new organization](https://github.com/organizations/plan) for each **course**
- Join for free
- Associate a university email with the Organization
- If your university partners with GitHub or you complete the GitHub for Education training, you can enroll in [teacher benefits](https://education.github.com/discount_requests/teacher_application) for your organization, including large file storage and unlimited private repositories
- In Organization Settings
  - Set Member Privileges Base permissions to **Read**
  - Do not allow forking of private repositories
  - Do not allow any of the Admin repository permissions
- You may want to expand privileges for trusted teaching assistants to create & modify repositories

## Team

- Create a new [Team](https://docs.github.com/en/github/setting-up-and-managing-organizations-and-teams/creating-a-team) for each **class** / **semester**
- Teams have a *discussion* feature, but I've seen students make much more use of *Issues*, which stay more organized.

## Student Enrollment

- Students must create a free GitHub account and send you their GitHub user name (I suggest creating a google form for this which saves the user's authenticated email, allowing you to build a course roster of university emails and GitHub names that can be joined with official course rosters by email address)
- Invite students into the [organization & team](https://docs.github.com/en/github/setting-up-and-managing-organizations-and-teams/inviting-users-to-join-your-organization)
- Students must accept your invitation, so check them off from your roster as they accept
- Once students are in the organization, you can administratively change their team assignments or remove them.

## Main Course / Project Website Repository

- Create a main course page repository following the convention [organization name].github.io E.g. my GIS4DEV organization has a repository named GIS4DEV.github.io , which can be accessed in web form at https://gis4dev.github.io  or repository form at https://github.com/GIS4DEV/GIS4DEV.github.io
- In the repository Settings, Enable Features Issues, and under GitHub Pages ensure that the site is published with the main or master branch. Choose a Theme for the default site style.
- Keeping in mind that this repository will be public, apply an appropriate license and do not include any copyright-protected materials in this repository.
- Clone the repository to your local computer with [GitHub Desktop](https://docs.github.com/en/desktop) or a similar app
- Author content in [Markdown .md documents](https://guides.github.com/features/mastering-markdown/) using a coding text editor like Atom or Notepad++
- Sprinkle in HTML if you know it, including any embed code for other apps
- Set up barebones style for navigation (e.g. footer material with links back to main page) and ordering pages by file name, following Jekyll documentation
  - This could probably be achieved with the special `_posts` [directory in Jekyll](https://jekyllrb.com/docs/posts/#the-posts-folder) *I just stupidly tried this with an incorrect date format and abandoned it. will probably switch to posts so that the date of each lesson is clear*
- You can link to class- or organization-restricted electronic resources (e.g. a course management system, organization-only Google Drive/Apps, Panopto videos, etc.). I suggest just noting that it is a class-only link on the page. For example, quizzes could be created in a course-only Google Form and linked or embedded from the page, allowing students access while blocking the public. Feel free to copy embed code right into your `markdown.md` documents.
- If working from multiple computers or on local computers and through the GitHub website, always [Fetch origin](https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/syncing-your-branch) before working locally.
- Feel free to fork my course site or follow the student guide to creating pages linked below.

## Literature or other Proprietary / Copyright Material

- Create a literature repository for storing copyright-protected readings to share with the class under fair educational use.
- Protect this repository by making it **private**
- In the settings, you can Manage Access and choose to allow a Base Role of "Read" (the default for the organization), or "None". If you choose none, you can **Invite** the class *team* with *read access*.
- Organization-wide settings prevent *forking* this repository to other GitHub repositories which may or may not be public, but students can *clone* it to their local computer or download content one file at a time. I just tell students what the naming convention is on the files and remind them a few times where to find this repository.

## Syllabus

- Joining GitHub and the course organization is a prerequisite
- Technical questions sent to the professor's email will not be answered: use the *Issues* feature on the course GitHub page
- Technical questions and solutions will be discussed in the *Issues* feature, therefore you need to **watch** the course repository to get email updates from the Issues discussions. (note: I had my university admin white-list github.com so that these notifications don't go to the junk/spam folder)

## Assignment Development

- Use [GitHub Desktop](https://docs.github.com/en/desktop) or another local Git app
- Clone your .github.io repository
- Do your work locally, commit frequently, and push to the server when it's ready
- If using Jekyll on GitHub, it can take 15-20 minutes after pushing changes before they are reflected on the website
- I have one page for each class meeting
- For assignments requiring distribution of code/materials/data, consider creating a new repository for the assignment, and then link to this repository from your course page
- Create a routine directory structure / template for assignments with data, metadata, procedure, and report directories, keeping materials provided by the instructor in different directories from outputs created by students, so that merging changes does not create conflicts.

## Student Assignments

- It's actually not to difficult to get students publishing their work on GitHub pages. Feel free to use my [instructions & resources](https://gis4dev.github.io/lessons/01_githubpages.html) It will take a couple of hours of their time to get up and running at the beginning of the semester, and minimal support thereafter.
- As long as the assignment can be public, they should first **fork** the assignment repository to their own GitHub account and then **clone** the repository to their local computer
- This way, if you need to revise the assignment, students can use GitHub Desktop to [merge your changes into their own version](https://midd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=584ec2bf-b7af-4aab-aa25-acef0043a9db).
- Essentially, you have a system to provide all of the assignment materials to students at once and to allow them to sync any updates to their assignment.
- Either ask students to **commit** and **push** their work back into their own forked version of the assignment repository, or to post solutions as a new page in their GitHub pages.
- Decide as a class to hold communication about an assignment in the assignment repository Issues or in the main course GitHub Issues
- For private communication of assignments, use another channel like Google Apps or use the [GitHub Education](https://education.github.com/) framework, which creates individual or group private repositories for student assignments within the course organization.
- You may fork students' work, make changes or add comments, and send revisions back to them as a pull request.
- Some very smart comp sci / data sci professors have been creating scripts to automatically clone students' work, execute the code, and auto-grade whether it produces the expected results!
