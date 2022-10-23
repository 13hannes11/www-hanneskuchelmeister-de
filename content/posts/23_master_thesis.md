+++
author = "Hannes Kuchelmeister"
title = "Master's Thesis: Predicting Distance to Focal Plane"
date = "2022-10-23"
tags = [
   "thesis", "masters", "python", "rust", "libadwaita", "machine learning", "neural networks"
]
+++

My thesis recently got published on [DIVA](http://urn.kb.se/resolve?urn=urn:nbn:se:uu:diva-484056). The thesis tried to answer the question if it is possible to predict the distance and direction towards ideal focus using machine learning. The images were stool samples which were prepared with a method that has the name "Kato-Katz".

The thesis basically consisted of three steps. The first step was to understand the given data. The dataset that Etteplan had did not have any focus annotations, it only had annotations of parasite eggs. This meant that data needed to be annotated. Stool samples tend to have an uneven height profile and therefore focus can vary in one image. Thus, multiple images per sample at different focus distances are available. The issue with differing heights is that this makes annotating a whole image tricky, as different regions were to be annotated. I deemed it infeasible to gather enough data and annotate it this way. Therefore, the idea of using smaller patches of the image was born. Smaller patches only require one value for the whole patch, and therefore I did not expect a large annotation time per image.

The second step was to annotate images. I did not find any annotation tool that fit my requirements and therefore decided to build my own. The tool supports the following:

* Keyboard shortcuts to navigate through the stack of images of a patch and to quickly chose the most in focus one.
* Continuous quick saves, so annotations do not get lost even if the program were to crash.
* Linux and Windows support

I saw this as a learning opportunity and therefore decided to take a leap of faith to write the tool in rust and GTK. Retrospectively, this slowed me down somewhat. If I remember correctly the creation of this annotation tool took a total of three weeks. I have written a post about it [here]({{< ref 22_focus_annotator >}}) and the source code is available on [GitHub](https://github.com/13hannes11/focus_annotator).


The last step was the actual machine learning part. Building a model pipeline, trying out different architectures and seeing if the problem at all is learnable.

differeing