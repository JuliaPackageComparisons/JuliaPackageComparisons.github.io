+++
title = "Finite Element Method"
+++

# Finite Element Method

\toc

## Introduction

In order to simulate the behavior of solid materials and structures under loads, one often relies on the [Finite Element Method (FEM)](https://en.wikipedia.org/wiki/Finite_element_method). FEM reformulates the governing equations of continuum mechanics (such as elasticity or structural dynamics) into a discretized system that can be solved numerically. While it is possible to implement FEM “by hand” using general-purpose linear algebra and differential equation tools in Julia, there are specialized packages that provide higher-level abstractions for FEM workflows. These dedicated packages make it easier to define meshes, boundary conditions, and material models, and are generally recommended when the goal is efficient and accurate structural analysis (as opposed to e.g. re-implementing the method for teaching or prototyping).

## Packages

Currently, this section contains only a single package. While it provides a transparent, low-level approach to finite element analysis that is useful for both education and research, there are other FEM-related Julia packages (such as Ferrite.jl or JuAFEM.jl) that could also be listed here. If you have experience with using any of these packages, please consider contributing a short comparison. A guide to help you through the process can be found [here](https://github.com/JuliaPackageComparisons/JuliaPackageComparisons.github.io/blob/main/docs/contributing.md#modify-existing-content).

### LowLevelFEM.jl

{{badge LowLevelFEM}}

- **GitHub:** [github.com/perebalazs/LowLevelFEM.jl](https://github.com/perebalazs/LowLevelFEM.jl)
- **JuliaHub:** [LowLevelFEM](https://juliahub.com/ui/Packages/General/LowLevelFEM)
- **Documentation:** [perebalazs.github.io/LowLevelFEM.jl](https://perebalazs.github.io/LowLevelFEM.jl)

#### Overview

**LowLevelFEM.jl** is a finite element framework for **solid mechanics and heat conduction problems** written entirely in Julia.
It emphasizes a *transparent, low-level implementation* of the FEM, where mathematical details such as steps of the solution, operations with matrices, scalar, vector and tensor fields are explicitly visible.

The package is well suited for:

- **Education** — teaching FEM fundamentals in a clear, step-by-step way
- **Research** — prototyping new FEM formulations or numerical schemes
- **Applications** — solving small to moderately complex structural problems where full control and customizability are important

#### Example

```julia
using LowLevelFEM

# `gmsh` is exported by LowLevelFEM
gmsh.initialize()
gmsh.open("your_model.geo")

mat = material("body", E=2e5, ν=0.3)
prob = Problem([mat], type=:PlaneStress)  # :Solid, :PlaneStrain, :AxiSymmetric, :HeatConduction, ...

bc   = displacementConstraint("supp", ux=0, uy=0)
force = load("load", fy=-1)

q = solveDisplacement(prob, [force], [bc])
S = solveStress(q)

showDoFResults(q, :uvec)
showStressResults(S, :s)

openPostProcessor()
gmsh.finalize()
```

Note: physical group names in your geometry (created in Gmsh) must match the strings used above (e.g., `"body"`, `"supp"`, `"load"`).

An alternative solution (instead of `q = ...`, `S = ...`)

```julia
K = stiffnessMatrix(prob)
f = loadVector(prob, [force])
applyBoundaryConditions!(K, f, [bc])
q = K \ f

E = mat.E
ν = mat.ν

A = (u ∘ ∇ + ∇ ∘ u) / 2
I = unitTensor(A)
S = E / (1 + ν) * (A + ν / (1 - 2ν) * trace(A) * I)
```

A more detailed description of goals, features, and design principles can be found on the [JuliaHub package page](https://juliahub.com/ui/Packages/General/LowLevelFEM).

## References

* Discourse
  * 
* YouTube
  * 
* arXiv
  * 

## Star History

{{star_history LowLevelFEM}}

