+++
author = "Hannes F. Kuchelmeister"
title = "Micro Pedestrian Simulation."
date = "2021-03-19"
description = "" 
tags = [ 
"parallel programming","simulation", "c++","project","UU", "CUDA", "SIMD", "OMP"
]
+++

This spring I took a course in low level parallel programming. In this course as a group of three we needed to implement parts of a pedestrian simulation.

The result can be seen in video form:
{{< youtube Ym4geZaaM20 >}}

The first assignment was to parallelize the computation of next desired positions of agents using OMP and PThreads. The solution for PThreats that we chose was to spawn new threads each tick. This of course is inefficient and actually caused a slowdown. Instead we should have implemented a thread-pool.

The second assignment had as task to vectorize the computations using SIMD. To achieve that we needed to change the data structures of the simulation and store information like agent position in arrays. This we encapsulated to keep the original object oriented interface while still being able to vectorize the data. As a bonus we also had to implement CUDA version which was relatively easy as the main work of vectorizing our data was already done for the SIMD implementation.

The third assignment's task was to add an algorithm for avoiding overlapping positions of agents. We were supposed to create regions which do that computation for the agents contained in them. Part of the challange was to handle region crossing and general race conditions. Our approach was to handle border agents and central agents seperatly. This allowed us to compute movements for all of the central agents by computing it for each region at the same time. The agents at the border we decided to handle sequentially to save time. This has the effect that our solution significantly slows down if there is many agents at the borders. A possible improvement would be to have border regions that handle a border between two regions themselves. This would allow borders to be handled in parallel however it would need careful handling (especially in corners). The bonus part of this assignment was to implement dynamic region splitting and merging. We implemented this by having two threshold values. One maximum value for the allowed agents per region and one minimum value. If the maximum is surpassed a region is split so that both of the new regions have the same amount of elements. If the number of agents in a region falls below the minimum threshold that region is merged with the neighbouring region that has the least amount of agents. This merging and splitting we only implemented in one dimension to keep our solution simpler.

The fourth and last assignment was related to heterogeneous computing. While the processor is moving the agents the GPU should compute a heat-map of the agent's desired position. Therefore, we had to use non-blocking calls for copying data to the gpu. The heat-map computation consisted of actually computing the heat-map, scaling it up and then using a blur filter. We used shared memory to improve performance for the blur filter as pixel values of neighbours needed to be accessed by multiple threads.