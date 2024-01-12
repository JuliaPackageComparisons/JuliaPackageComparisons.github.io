# Agent Based Modelling (ABM)

Julia has an extensive suite of various packages targeting various applications for **agent based modelling**.

\toc

## Agents.jl
{{badge Agents}}
Agents.jl is a pure-Julia general purpose framework for ABM. It is currently the most popular framework in terms of numer of users and is the ABM framework that has the longest actively-developed period in the list (within the registered Julia packages ecosystem). 
Although its main focus is providing a framework for fast prototyping and flexibility in generating and then altering the ABM, 
it has been heavily optimized for performance as well. Some of its key features can be summarized as:

1. It is fast (faster than MASON, NetLogo, or Mesa or any other general purpose alternative we have compared it with)
2. It is simple: has a short learning curve and requires writing minimal code when compared to other general purpose alternatives
3. Has an extensive interface of thousands of out-of-the box possible agent actions
4. Straightforwardly allows simulations on Open Street Maps
5. Allows both traditional discrete-time ABM simulations as well as continuous time "event queue based" ABM simulations.

Agents.jl is also extended by some domain-specific frameworks such as MicrobeAgents.jl.

## Vahana.jl
{{badge Vahana}}
Vahana.jl is an ABM framework tailored for the development of large-scale agent-based models, based on a synchronous graph dynamical system approach. One of its notable strengths lies in its parallel execution capabilities, making it suitable for supercomputer clusters and for handling large datasets or agent populations (an aspect for which there are few alternatives even outside the Julia community). Therefore, a major focus of Vahana's development has been on CPU performance and a small memory footprint. Furthermore, Vahana is optimized for representing complex network structures, making it a good choice for network-centric models.

On the downside, while Vahana supports spatial information, it is limited to discrete n-dimensional rasters, and it is less suitable for simulations where agents need to move extensively within these spaces. The requirement to express models as graphs is unconventional and may require a paradigm shift for those accustomed to more traditional agent-based modeling approaches. In addition, some ABMs, e.g., such as those where only a single agent can occupy a cell in a grid and can move (as in the Schelling model), are not easy to formulate in a parallel version at all.

You can learn more about Vahana.jl in:

- [[ANN] Vahana.jl - Framework for large-scale agent-based models](https://discourse.julialang.org/t/ann-vahana-jl-framework-for-large-scale-agent-based-models/102024)
- [Vahana.jl - A Framework for Large-Scale Agent-Based Models | Steffen Fürst | JuliaCon 2023](https://www.youtube.com/watch?v=-318ec-kCBM)

## MEDYAN.jl
<!-- MEDYAN.jl is not released yet! -->
<!-- {{badge MEDYAN}} -->
Mechanochemical Dynamics of Active Networks (MEDYAN) is an efficient and scalable computational model for mechanochemical simulations of active matter networks. Our goal is to be able to simulate both the mechanics and chemistry of the cytoskeleton in a whole cell at the minute time scale while still keeping track of the stochastic chemistry of individual proteins. MEDYAN.jl is not released yet and is still a work in progress but there are currently [some basic tutorials](https://medyan.org/julia-docs/dev/tutorials/1install.html).

When fully released, MEDYAN.jl's source code will be downloadable for scientific use, but it probably won't be on GitHub or in the general registry. What is likely is that components of MEDYAN.jl that might be useful as stand-alone packages will be separated and published on GitHub [medyan-dev organization](https://github.com/medyan-dev).

## CellBasedModels.jl
{{badge CellBasedModels}}
CellBasedModels.jl is an ABM package that has in mind its application to continuum space ABMs. Its main target is to solve physical models that are, at least partially, defined in terms of differential equations.
Characteristics:
 - Work with parallelized CPU capabilities or Nvidia GPUs through CUDA.jl. This makes it very efficient.
 - Hybrid ABM/Continuum Model. Incorporation of a continuum medium that can evolve with PDEs to allow ABM+Coninuum medium models.
 - Wide compatibility to use DifferentialEquations.jl as solvers of the differential equation. DifferentialEquations.jl is fully integrated into the package in a way that goes beyond the type of integration that Agents.jl supports. 
 - Provides extensive documentation and examples.
 - Although the applicability is very general to continuum space ABMs, the examples provided so far are all from biophysical problems. 

There are plans to in the future merge/port GPU functionalities of CellBasedModels.jl with Agents.jl.

## EasyABM.jl
{{badge EasyABM}}
EasyABM.jl is general purpose ABM framework with a philosophy/style that is more oriented towards NetLogo and tries to offer a simple approach to ABMs for people without experience in Julia, at the expense of performance, flexibility, and total number of features.
