+++
author = "Hannes Kuchelmeister"
title = "Cell-C-sigma Sparse Matrix Format"
date = "2021-12-09"
tags = [
  "c++", "cuda", "sparse matrix", "matrix"
]
+++

The final project in the course "Accelarator-based Programming" consisted of implementing the SELL-C-sigma sparse matrix storage format.
I found this project very intersting but also quite challanging. For the matrix initialisation I used a matrix that is stored in compressed row storage (CRS) format and converted this to SELL-C-sigma.

SELL-C-sigma is a very interesting format as it is designed to work well for vectorization, multi-core processing and GPUs without any need of matrix format change. Therefore the format is largely hardware agnostic and well suited for hybrid heterogenous systems.

To understand how SELL-C-sigma works it was helpful to first look at CRS, Jagged Diagonal Storage (JDS), ELLPACK and Sliced Ellpack. I created the following graphics to help me understand these formats.

The following images are licenced under [CC BY-NC](https://creativecommons.org/licenses/by-nc/4.0/legalcode).

![](/images/posts/sell_c_sigma/crs.png)
![](/images/posts/sell_c_sigma/jds.png)
![](/images/posts/sell_c_sigma/ellpack.png)
![](/images/posts/sell_c_sigma/ellpack_sliced.png)
![](/images/posts/sell_c_sigma/sell_c_sigma.png)

