+++
author = "Hannes Kuchelmeister"
title = "MARS 1-3"
date = "2019-08-27"
description = "In university we worked on a framework for geometry processing."
tags = [
    "assignment","c++","university","geometry"
]
aliases = [
	"/portfolio/mars-lab-tasks-1-3/"
]
+++

The lab consisted of 6 tasks of which the the results of the first three tasks will be represented here. Most of the tasks consisted of implementing parts of a library.

## Task 1

In this task we had to implement two programs.

The first _bspline_, was suposed to generate points that lie on the inputed bspline ( to draw it ).

The second _npInterpol_ had the job of creating a spline based on multiple two dimensional points.

First running npInterpol and then bspline and drawing the output gives the following result.

### Input

| x |  4.5 | 14 | 14.6 | 23  | 28  | 20.6 | 10 | 4.5 | 3.5  |
|---|------|----|------|-----|-----|------|----|-----|------|
| y |   2  |  7 | 7.5  | 1.5 | 8.5 | 13   | 14 | 11  | 15.9 |

### npInterpol output

![](/images/posts/mars/1_npinterpol_out.png)

### bspline output

![](/images/posts/mars/1_bspline.png)

## Task 2

Here the task was to create a program _pInterpol_ for periodic splines. In this case it is used to appoximate a circle.

### Input

![](/images/posts/mars/2_periodic_in.png)

### pInterpol output

![](/images/posts/mars/2_periodic_out.png)

### bspline output

![](/images/posts/mars/2_periodic_vis.png)

## Task 3

This task consisted of three programs.

* _insertKnots_ inserts a knot in a spline without altering its shape
* _tangent_ creates a file containing a specified amount of tangents of the spline curve
* _makeParallel_ creates a spline parallel to the original one (our implementation has an error and therefore it’s output has is only partially parallel)

### Input spline

![](/images/posts/mars/3_input.png)

### insertKnots output

![](/images/posts/mars/3_insertKnots.png)

### tangent output

![](/images/posts/mars/3_tangents.png)

### makeParallel output

![](/images/posts/mars/3_makeParallel.png)

Tasks 4-6 you can find [here](/posts/11_mars_lab_4_6).
