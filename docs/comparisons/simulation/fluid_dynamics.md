+++
title = "Fluid dynamics"
+++

# Fluid dynamics

\toc

## Introduction
In order to simulate the motion of fluids (liquids and gasses), one has to solve the [Navier Stokes Differential Equation](https://en.wikipedia.org/wiki/Navier%E2%80%93Stokes_equations). Solving those equations numerically, in a way that is both performant and accurate, is a difficult problem. While this is possible to do "manually" by using a package like [DifferentialEquations.jl](https://docs.sciml.ai/DiffEqDocs/stable/), there are higher-level alternatives that are tailored specifically for fluid simulations. It is generally reccomended to use such higher-level alternatives, when high performance and accuracy is the goal (as opposed to e.g. learning/teaching).

## Packages
There are Julia packages for fluid simulations. Based on a superficial impression, they both seem very good. However, this page sorely lacks input from someone who has used one (or either!) of the packages. If you know anything about what it is like to use them, please concider submitting a pull request. A guide to help you through the process can be found [here](https://github.com/JuliaPackageComparisons/JuliaPackageComparisons.github.io/blob/main/docs/contributing.md#modify-existing-content)

### Oceananigans.jl
{{badge Oceananigans}}
From the README:
> Oceananigans is a fast, friendly, flexible software package for finite volume simulations of the nonhydrostatic and hydrostatic Boussinesq equations on CPUs and GPUs. It runs on GPUs (wow, fast!), though we believe Oceananigans makes the biggest waves with its ultra-flexible user interface that makes simple simulations easy, and complex, creative simulations possible.
> 
> Oceananigans.jl is developed by the Climate Modeling Alliance and heroic external collaborators.

### WaterLily.jl
{{badge WaterLily}}
From the README:
> WaterLily.jl is a simple and fast fluid simulator written in pure Julia. This is an experimental project to take advantage of the active scientific community in Julia to accelerate and enhance fluid simulations.

> WaterLily.jl solves the unsteady incompressible 2D or 3D Navier-Stokes equations on a Cartesian grid. The pressure Poisson equation is solved with a geometric multigrid method. Solid boundaries are modelled using the Boundary Data Immersion Method. The solver can run on serial CPU, multi-threaded CPU, or GPU backends.

## References

* Discourse
  * [[ANN] Oceananigans.jl: Fast and friendly fluid dynamics on CPUs and GPUs](https://discourse.julialang.org/t/ann-oceananigans-jl-fast-and-friendly-fluid-dynamics-on-cpus-and-gpus/51459)
  * [[ANN] WaterLily.jl: A differentiable fluid simulator with fast heterogeneous execution](https://discourse.julialang.org/t/ann-waterlily-jl-a-differentiable-fluid-simulator-with-fast-heterogeneous-execution/97941)
* YouTube
  * [WaterLily.jl: Real-time fluid simulation in pure Julia | Gabriel Weymouth | JuliaCon2021](https://www.youtube.com/watch?v=YsPkfZqbNSQ)
  * [Ocean Modelling With Oceananigans.jl | Gregory Wagner | JuliaCon 2023](https://www.youtube.com/watch?v=Nlq3J7PCB_Q)
  * [[08x13] Real-Time Fluid Dynamics Simulation in Julia using Waterlily.jl, GLMakie.jl and VS Code](https://www.youtube.com/watch?v=hYbG7dFDCdU)
* arXiv
  * [WaterLily.jl: A differentiable fluid simulator in Julia with fast heterogeneous execution](https://arxiv.org/abs/2304.08159)
  * [Oceananigans.jl: A model that achieves breakthrough resolution, memory and energy efficiency in global ocean simulations](https://arxiv.org/abs/2309.06662)

## Star History
{{star_history WaterLily Oceananigans}}
