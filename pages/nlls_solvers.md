# Nonlinear Least Squares Solvers

Nonlinear Least Squares (NLLS) solvers optimize problems of the form:
\begin{align*}\argmin_{\mathbf{x}} ~&~ \frac12 \sum_i \rho_i\left(\| f_i(\mathbf{x})\|^2\right), \\
\mathrm{s.~to} ~&~ c_j(\mathbf{x}) < b_j ~~\forall j, \\
~&~ c_k(\mathbf{x}) = e_k ~~\forall k. \end{align*}

## Available solvers

- From [JuliaNLSolvers](https://github.com/JuliaNLSolvers): [LsqFit.jl](https://github.com/JuliaNLSolvers/LsqFit.jl) for curve fitting
- From [Julia Smooth Optimizers](https://jso.dev/): tron and trunk (in [JSOsolvers.jl](https://jso.dev/JSOSolvers.jl/stable/solvers/)), for bound constrained and unconstrained problems, and [CaNNOLeS.jl](https://github.com/JuliaSmoothOptimizers/CaNNOLeS.jl) for equality constrained problems.
- [LeastSquaresOptim.jl](https://github.com/matthieugomez/LeastSquaresOptim.jl) for problems with bound constrained variables.
- [NLLSsolver.jl](https://github.com/ojwoodford/NLLSsolver.jl) for problems with robustified cost functions and non-Euclidean variables (e.g. variables on a manifold).

More general [nonlinear solvers](/pages/nonlinear-solvers) can also often be used to optimize NLLS problems, e.g.

- From [JuMP.dev](https://jump.dev/): [Ipopt.jl](https://github.com/jump-dev/Ipopt.jl)

However, the more specialized packages tend to offer better performance.

## Feature comparison

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

## Performance evaluation

Performance is evaluated on unconstrained, unrobustified problems, some small and dense, others larger and sparse. Only solvers able to optimize all problems are included.Performance is evaluated by the time taken to optimize the cost function. [This script](https://gist.github.com/ojwoodford/789e85197b18dcddb349e1f695bffc31) was used to evaluate the algorithms, on an Apple M1 Pro CPU. Except where timings are omitted, solvers converged to the global optimum.

### Small, dense problems

@@im-100
![](/assets/nlls_dense.svg)
@@

### Medium sized, sparse problems

@@im-100
![](/assets/nlls_sparse.svg)
@@