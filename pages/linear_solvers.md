# Linear Solvers
This section will be split into two categories; Numerical linear solvers, and symbolic linear solvers.

## Numerical Linear Solvers
A linear problem is of the form $Ax=b$ for some matrix $A$, known vector $b$ and unknown vector $x$. This can be solved by `A\b` in base Julia, which is good enough in many cases. If you need more control over the solver algorith, there are dedicated packages that provide such functionality.

The most complete one is [LinearSolve.jl](https://github.com/SciML/LinearSolve.jl/), which is part of the [SciML](https://sciml.ai/) ecosystem. It takes the role of a meta-package, and build on top of other packages that implement the actual algorithms. The benefit is that you can define the problem once, and then solve it with a number of different solvers by changing a keyword argument.

Specific solvers providing their own API's include [Paradiso.jl](https://github.com/JuliaSparse/Pardiso.jl), [MKL.jl](https://github.com/JuliaLinearAlgebra/MKL.jl), [BandedMatrices.jl](https://github.com/JuliaLinearAlgebra/BandedMatrices.jl), and more.

See https://discourse.julialang.org/t/solving-sparse-linear-systems-fast/83071/9 
for a relevant discussion on the options for solving numerical linear equations.

## Symbolic Linear Solvers
You can use [Symbolics.jl](https://github.com/JuliaSymbolics/Symbolics.jl) to solve a single or multiple equations in one ormore variables. See the [documentation for `solve_for`](https://symbolics.juliasymbolics.org/stable/manual/expression_manipulation/#Symbolics.solve_for) for more detail.

You can also use [SymPy.jl](https://github.com/JuliaPy/SymPy.jl)
