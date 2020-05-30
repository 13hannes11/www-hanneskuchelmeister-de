+++
author = "Hannes Kuchelmeister"
title = "GitHub Actions for Automatic Deployment"
date = "2020-05-30"
description = ""
tags = [
    "github","actions","static","pipeline","DevOps","CI/CD"
]
+++

After moving this website to [Hugo](https://gohugo.io) it was time to automate the process of publishing changes. Luckily, GitHub introduced a feature called GitHub Actions some time ago. This allowed me to add an automated build and publish pipeline (see [here](https://github.com/13hannes11/www-hanneskuchelmeister-de/blob/master/.github/workflows/main.yml)). The pipeline has the following steps:

1. A git checkout action pulls the repository including *lfs* and *submodules*.
2. The website is built using `hugo-actions` action is used to build the website.
3. The built content is uploaded as github artifact, however, this step is optional.
4. An `ftp-action` is used for publishing the newly built site.

Now changes made to the git repository are immidiatly published to the website.
