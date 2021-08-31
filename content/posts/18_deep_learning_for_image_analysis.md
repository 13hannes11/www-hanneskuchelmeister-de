+++
author = "Hannes Kuchelmeister"
title = "Course: Deep Learning for Image Analysis"
date = "2021-08-31"
tags = ["deep_learning", "python", "UU", "pytorch"]
+++

This post's aim is to give an overview over the course in Deep Learning for Image Analysis that I took this semester at Uppsala University. The course consisted of 5 assignments, some to be done in a group and some alone. It started off with an assignment to implement a simple perceptron. This was followed by an assignment to implement a fully connected neural network without the usage of any machine learning tools. This proved to be quite challenging as it is easy to introduce small mistakes that are hard to track down.

## Assignment 1: Linear regression with gradient descent

In Assignment 1 the task was to write your own model for gradient descent using no libraries (except numpy). This was then used to predict the horsepower of cars based on the given input data.
The input data consisted of the following features:

* mpg: miles per gallon
* cylinders: Number of cylinders between 4 and 8
* displacement: Engine displacement (cu. inches)
* horsepower: Engine horsepower
* weight: Vehicle weight (lbs.)
* acceleration: Time to accelerate from 0 to 60 mph (sec.)
* year: Model year (modulo 100)
* origin: Origin of car (1. American, 2. European, 3. Japanese)
* name: Vehicle name


## Assignment 2: Classification of handwritten digits

A classical introduction example for machine learning is the use of the MNIST dataset. In this assignment each student needed to extend the linear classifier from assignment 1 to a full neural network. Libraries were restriced to numpy.
Also, part of the task was to plot the weights of the network to see if they are related to the actual numers. This is the resulting images for each of the numbers. It is not really possible to guess which weights belong to which number wthout prior knowledge.

![](/images/posts/deeplearning_image_analysis/weights_visualised.png)


## Assignment 3: MNIST again and Semantic Segmentation

The third assignment opposed to the second allowed the usage of pytorch as library. First we needed to rebuild our model from the second assignment with pytorch and achieve similar results. Then we changed to a convolutional based model to furhter improve accuracy. 
Moreover, we had to explore different regularisation techiques and use different optimizers.

The second part of the assignment required a switch to semantic segmentation where we still should use a convolutional model and also experiment to get different results.
Also I experimented with priming of the model, to first train on very few images to nudge the model in the right direction and speed up training on the full dataset. This helped me improve training times dramatically.

The code for the assignment is available as jupyter notebooks here:

* [MNIST](https://www.kaggle.com/haku6695/uu-dlia-assignment-3-mnist)
* [WARWICK](https://www.kaggle.com/haku6695/uu-dlia-assignment-3-warwick)

The worst to best classified images from the warwick dataset can be seen below:

![](/images/posts/deeplearning_image_analysis/warwick_worst_to_best.png)




## Assignment 4: YOLO

Assignment 4 was meant as a group project but unfortunatly my only group mate decided not to take part in the assignment. Thereofe, I worked on my own but did only need to work on YOLOv3.
The task was to train and run yolo on an aquarium dataset. Unfortunatly the results I gor were rather mixed, especially my bounding boxes seemed to be quite far off. However, other groups had more success.

The resulting notebook can be seen here:
[Google Collab YOLO](https://colab.research.google.com/drive/1Br_MpmGKOWWfEfFxN7A8u4iq2YRXS12H?usp=sharing)

## Assignment 5: Competition on Cancer Cells

The most interesting and last assignment was a competition among class mates, to detect cancerous cells.
My group decided to start off by a simple convolutional network, which produced already quite good results.
We then split off to try different approaches. I made a fully convolutional network, inspired by ResNET, which also used Dropout and MaxPool layers for regularisation.
It turned out that the improvements we gained in the fully convolutional network could be replicated by the simpler convolutional network from the beginning. We therefore ended up with two models performing approximatly equally well.
In the end we managed to get the fourth place.
Here you can find the code for the fully convolutional approach:
[Kaggle Notebook](https://www.kaggle.com/haku6695/uu-dlia-assignment-5-challange).

