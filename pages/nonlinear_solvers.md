+++
title = "Nonlinear Solvers"
+++

# Nonlinear Solvers
This section is still missing a lot of content. If you have used or developed Julia packages in this domain, we would love your help! Please visit the ["Contributing" section](https://github.com/JuliaPackageComparisons/JuliaPackageComparisons.github.io#contributing) of the [repository that hosts this website](https://github.com/JuliaPackageComparisons/JuliaPackageComparisons.github.io) for information on contributions.
**Table of contents:**
\toc

This section will be split into two categories; Numerical nonlinear solvers, and symbolic nonlinear solvers.

## Numerical Nonlinear Solvers
The most complete one is [NonlinearSolve.jl](https://github.com/SciML/NonlinearSolve.jl/), which is part of the [SciML](https://sciml.ai/) ecosystem. It takes the role of a meta-package, and build on top of other packages that implement the actual algorithms. The benefit is that you can define the problem once, and then solve it with a number of different solvers by changing a keyword argument.

The [JuMP.dev](https://jump.dev/) framework provides a simple grammar for defining optimization cost functions, or models. It allows non-linear models to be defined, which can then be optimized using any of the compatible solvers, such as [Ipopt.jl](https://github.com/jump-dev/Ipopt.jl)

There are also a number of other packages that provide nonlinear solver algorithms. Several of them are part of the [JuliaNLSolvers](https://github.com/JuliaNLSolvers) organization, such as [NLSolve.jl](https://github.com/JuliaNLSolvers/NLsolve.jl) and [Optim.jl](https://github.com/JuliaNLSolvers/Optim.jl). There is also [Roots.jl](https://github.com/JuliaMath/Roots.jl) and [SIAMFANLEquations.jl](https://github.com/ctkelley/SIAMFANLEquations.jl).

Finally, there are a number of packages that specialize in optimizing nonlinear least-squares functions, discussed below.

### Nonlinear Least Squares Solvers

Nonlinear Least Squares (NLLS) solvers are a particular class of numerical nonlinear solvers that optimize problems of the form:
\begin{align*}\argmin_{\mathbf{x}} ~&~ \frac12 \sum_i \rho_i\left(\| f_i(\mathbf{x})\|^2\right), \\
\mathrm{s.~to} ~&~ c_j(\mathbf{x}) < b_j ~~\forall j, \\
~&~ c_k(\mathbf{x}) = e_k ~~\forall k, \end{align*}
where

- $\mathbf{x}$ is the set of variables to be optimized over.
- $f_i()$ are (potentially multi-dimensional) nonlinear functions of $\mathbf{x}$, whose squared norms are to be minimized.
- $\rho_i()$ are monotonically increasing robustification functions, that can be used to downweight larger errors.
- $c_j()$ are linear or nonlinear scalar functions of $\mathbf{x}$ on the output of which bound constraints $b_j$ are placed.
- $c_k()$ are linear or nonlinear scalar functions of $\mathbf{x}$ on the output of which equality constraints $e_k$ are placed.

A number of packages and solvers exist for this class of problem:

- From [JuliaNLSolvers](https://github.com/JuliaNLSolvers): [LsqFit.jl](https://github.com/JuliaNLSolvers/LsqFit.jl) for curve fitting
- From [Julia Smooth Optimizers](https://jso.dev/): tron and trunk (in [JSOsolvers.jl](https://jso.dev/JSOSolvers.jl/stable/solvers/)), for bound constrained and unconstrained problems, and [CaNNOLeS.jl](https://github.com/JuliaSmoothOptimizers/CaNNOLeS.jl) for equality constrained problems.
- [LeastSquaresOptim.jl](https://github.com/matthieugomez/LeastSquaresOptim.jl) for problems with bound constrained variables.
- [NLLSsolver.jl](https://github.com/ojwoodford/NLLSsolver.jl) for problems with robustified cost functions and non-Euclidean variables (e.g. variables on a manifold).

More general nonlinear solvers can also often be used to optimize NLLS problems, e.g.

- From [JuMP.dev](https://jump.dev/): [Ipopt.jl](https://github.com/jump-dev/Ipopt.jl)

However, the more specialized packages tend to offer better performance.

#### Feature comparison

Different packages and solvers offer different features. Here's a summary of the important ones:

| |[Ipopt](https://jump.dev/)|[tron](https://jso.dev/JSOSolvers.jl/stable/solvers/)|[trunk](https://jso.dev/JSOSolvers.jl/stable/solvers/)|[CaNNOLeS.jl](https://github.com/JuliaSmoothOptimizers/CaNNOLeS.jl)|[NLLSsolver.jl](https://github.com/ojwoodford/NLLSsolver.jl)|[LeastSquaresOptim.jl](https://github.com/matthieugomez/LeastSquaresOptim.jl)|
|---|---|---|---|---|---|---|
|Registered| :white_check_mark: | :white_check_mark: |:white_check_mark: |:white_check_mark: | :white_check_mark:| :white_check_mark: |
|Uses JuMP model definition|:white_check_mark: | :white_check_mark:|:white_check_mark:|:white_check_mark:|:x:|:x:|
Bound constraints| :white_check_mark: | :white_check_mark: |:x:|:x:| :x:| :white_check_mark: |
Equality constraints| :white_check_mark: | :x:|:x:|:white_check_mark:| :x: | :x: | 
Non-linear constraints|:white_check_mark: | :x:|:x:|:white_check_mark:| :x: | :x: | 
Robustified cost functions|:x:|:x:|:x:|:x:|:white_check_mark: |:x:|
Non-Euclidean variables|:x:|:x:|:x:|:x:|:white_check_mark: |:x:|
Dense auto-differentiation|:white_check_mark: | :white_check_mark:|:white_check_mark:|:white_check_mark: | :white_check_mark: |  :white_check_mark: |
Supports sparsity| :white_check_mark: | :white_check_mark:|:white_check_mark:|:white_check_mark: |  :white_check_mark: |  :white_check_mark: |
Sparse auto-differentiation|:white_check_mark: | :white_check_mark:|:white_check_mark:|:white_check_mark: | :white_check_mark: |  :x: | 

- Registered: The solver can be installed automatically using Julia's package manager.
- Uses JuMP model definition: The [JuMP.dev](https://jump.dev/) framework provides a simple grammar for defining optimization cost functions, or models. Some solvers support these models.
- Bound constraints: Solvers can require some function output to be above or below a certain value.
- Equality constraints: Solvers can require some function output to equal to a certain value.
- Non-linear constraints: Functions used in constraints can be some nonlinear function of the variables.
- Robustified cost functions: A scalar, monotonic function, $\rho : \mathbb{R}^+ \rightarrow \mathbb{R}^+$ can be used to downweight larger errors.
- Non-Euclidean variables: Variables can exist on a non-linear manifold in a higher dimensional space, e.g. 3D rotations represented by a 9-element 3x3 matrix.
- Dense auto-differentiation: The solver supports auto-differentiation of a dense Jacobian of the cost function.
- Supports sparsity: The solver can exploit sparsity within the Jacobian to optimize very large, sparse problems.
- Sparse auto-differentiation: The solver supports auto-differentiation of a sparse Jacobian of the cost function.

#### Performance evaluation

Different solvers provide different performance on different problems, so any evaluation is subjective. Here, performance is evaluated on unconstrained, unrobustified problems, some small and dense, others larger and sparse. Only solvers able to optimize all problems are included. Performance is evaluated by the time taken to optimize the cost function. [This script](https://gist.github.com/ojwoodford/789e85197b18dcddb349e1f695bffc31) was used to evaluate the algorithms, on an Apple M1 Pro CPU. Except where timings are omitted, solvers converged to the global optimum.

##### Small, dense problems

@@im-100
![](/assets/nlls_dense.svg)
@@

##### Medium sized, sparse problems

@@im-100
![](/assets/nlls_sparse.svg)
@@

## Symbolic Nonlinear Solvers
A nonlinear symbolic problem could for example be to solve $x^2=4$ for $x$. The current state of symbolic nonlinear solving in native Julia is unfortunately quite poor. There is an [open issue](https://github.com/JuliaSymbolics/Symbolics.jl/issues/866) for [Symbolics.jl](https://github.com/JuliaSymbolics/Symbolics.jl) to add such functionality, but for now, the best option is to use [SymPy.jl](https://github.com/JuliaPy/SymPy.jl).