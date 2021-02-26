# Stencil-computation-on-FPGA
A simple stencil computation implemented by HLS
## Project introduction
**Stencil Computation**, also known as Stencil Code. The 'stencil' is a fixed pattern for updating the elements of an array. Stencil computation uses the neighbourhood of a computed point in the loop space to continuously update the value of that point, while the outermost loop is usually associated with the physical condition. At each physical time point of the computation, the inner loop high-dimensional array is defined as a neighbouring array's function.  

Different types of stencil computation serve as the **core in scientific and engineering computing**. They are widely used in computational electromagnetics, partial differential solving, CT or MRI imaging, and even turbulence and seismic wave propagation simulation acceleration. It has the characteristics of computationally intensive, memory-intensive, colossal memory consumption, and its computing time will increase linearly with the growth of array elements, so the parallel implementation and optimization of stencil computation have received extensive attention.

Our project takes the specific physical problem of "the heat conduction equation" as the research direction and tries to **explore the partial differential equation's general calculation optimization scheme based on stencil computation**. For general physics problems, to achieve sufficient accuracy or a considerable number of time steps, stencil computation needs to iterate repeatedly on all mesh points to update their values, which will become the core optimization object in our project.

In addition to this essential task, we also considered other aspects:  
How to establish a stencil cycle block strategy to balance data's locality and the communication overhead between nodes?  
How to design a reasonable stencil to fit the actual physical requirements?  
How to generalize the research results to general partial differential problems, such as electromagnetic field calculations?  
What are the performance differences of our optimization scheme in different hardware?  

Research is still in progress~
## Performance measurement
### Emulation result
![image](https://github.com/KevinLikesDringCoffe/Stencil-computation-on-FPGA/blob/main/fig/100iter.PNG)  
![image](https://github.com/KevinLikesDringCoffe/Stencil-computation-on-FPGA/blob/main/fig/1000iter.PNG)  
![image](https://github.com/KevinLikesDringCoffe/Stencil-computation-on-FPGA/blob/main/fig/10000iter.PNG)  
### Performance comparison
|  |7z010 hw|7z010 sw|host PC(HUAWEI matebook 13)|
|:--:|:--:|:--:|:--:|
|100iter|0.01240s|9.797s|0.6148s|
|1000iter|0.1135s|98.48s|5.993s|
|10000iter|1.124s|992.8s|59.78s|
## Group members
吴震宇  
王璇铮
