+++
author = "Hannes Kuchelmeister"
title = "Focus Annotator"
date = "2022-03-07"
tags = [
  "rust", "gtk", "gtk4", "libadwaita", "thesis"
]
+++

As part of my thesis, I needed a tool to easily annotate focus data of stacked microscopy images. Images are stacked in focus stacks to capture different parts of the sample in focus. To annotate which image of a stack is most in focus, I created a tool called “Focus Annotator”. This tool is written in rust and uses GTK4 and Adwaita. It has hotkey support to quickly annotate data. The keys “w” and “s” are used for navigating through the focus stack while “m”, “n”, “b”, which stand for mark, next, and back. Marking an image is meant to mark that the current image is the one in focus. The key “g” can be used to toggle a grid of neighbours to give the annotator more context on neighbouring stacks.

The application looks like this:

![](/images/posts/21_focus-annotator/focus_annotator.png)


The original application directly stored the annotations in the input file when they were made. This caused noticeable slowdowns with large files, and therefore a temporary file is created which stores the annotations. This file is then merged into the main opened file. When the application is opened, it checks for such a temporary file in case the program did not integrate it at an earlier state. If such a file is found upon startup, it is integrated into the main file and then deleted.

To make the release process easier and allow releasing an AppImage, I created my own container image for rust, which can compile rust-gtk applications to AppImage. It can be found [here](https://github.com/13hannes11/gtk4-rs-docker).
Also, I used other images to allow cross compilation and the automatic creation of windows setup files.


Binary files are available on the [GitHub release page](https://github.com/13hannes11/focus_annotator/releases).  
The source code is available on [GitHub](https://github.com/13hannes11/focus_annotator).

