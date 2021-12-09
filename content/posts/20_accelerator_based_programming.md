+++
author = "Hannes Kuchelmeister"
title = "SELL-C-sigma Sparse Matrix Format"
date = "2021-12-09"
tags = [
  "c++", "cuda", "sparse matrix", "matrix"
]
+++

The final project in the course "Accelerator-based Programming" consisted of implementing the SELL-C-sigma sparse matrix storage format.
I found this project very interesting but also quite challenging. For the matrix initialization, I used a matrix that is stored in compressed row storage (CRS) format and converted this to SELL-C-sigma.

SELL-C-sigma is a very intriguing format as it is designed to work well for vectorization, multicore processing and GPUs without any need of matrix format change. Therefore, the format is largely hardware-agnostic and well suited for hybrid heterogeneous systems.

To understand how SELL-C-sigma works it was helpful to first look at CRS, Jagged Diagonal Storage (JDS), ELLPACK and Sliced ELLPACK. I created the following graphics to help me understand these formats.

The following images are licenced under [CC BY-NC](https://creativecommons.org/licenses/by-nc/4.0/legalcode).

![](/images/posts/sell_c_sigma/crs.png)
![](/images/posts/sell_c_sigma/jds.png)
![](/images/posts/sell_c_sigma/ellpack.png)
![](/images/posts/sell_c_sigma/ellpack_sliced.png)
![](/images/posts/sell_c_sigma/sell_c_sigma.png)

