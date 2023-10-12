# Nonlinear Solvers
This section will be split into two categories; Numerical nonlinear solvers, and symbolic nonlinear solvers.

## Numerical Nonlinear Solvers
The most complete one is [NonlinearSolve.jl](https://github.com/SciML/NonlinearSolve.jl/), which is part of the [SciML](https://sciml.ai/) ecosystem. It takes the role of a meta-package, and build on top of other packages that implement the actual algorithms. The benefit is that you can define the problem once, and then solve it with a number of different solvers by changing a keyword argument.

The [JuMP.dev](https://jump.dev/) framework provides a simple grammar for defining optimization cost functions, or models. It allows non-linear models to be defined, which can then be optimized using any of the compatible solvers, such as [Ipopt.jl](https://github.com/jump-dev/Ipopt.jl)

There are also a number of other packages that provide nonlinear solver algorithms. Several of them are part of the [JuliaNLSolvers](https://github.com/JuliaNLSolvers) organization, such as [NLSolve.jl](https://github.com/JuliaNLSolvers/NLsolve.jl) and [Optim.jl](https://github.com/JuliaNLSolvers/Optim.jl). There is also [Roots.jl](https://github.com/JuliaMath/Roots.jl) and [SIAMFANLEquations.jl](https://github.com/ctkelley/SIAMFANLEquations.jl).

Finally, there are a number of packages that specialize in optimizing nonlinear least-squares functions. These are [discussed separately](/pages/nlls_solvers).

## Symbolic Nonlinear Solvers
A nonlinear symbolic problem could for example be to solve $x^2=4$ for $x$. The current state of symbolic nonlinear solving in native Julia is unfortunately quite poor. There is an [open issue](https://github.com/JuliaSymbolics/Symbolics.jl/issues/866) for [Symbolics.jl](https://github.com/JuliaSymbolics/Symbolics.jl) to add such functionality, but for now, the best option is to use [SymPy.jl](https://github.com/JuliaPy/SymPy.jl).