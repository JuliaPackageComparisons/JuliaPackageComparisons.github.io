+++
title = "Einsum"
+++

# Einsum
In linear algebra and mathematical physics, there is a notational convention called [Einstein Notation](https://en.wikipedia.org/wiki/Einstein_notation). The python package numpy implements a function called [einsum](https://numpy.org/doc/stable/reference/generated/numpy.einsum.html), which is the first hit when googling the term. Several Julia packages exists that implement einsum functionality.
\toc

## Packages
### Tullio.jl
{{badge Tullio}}
This package implements a macro `@tullio`, which it describes as
> a very flexible einsum macro. It understands many array operations written in index notation -- not just matrix multiplication and permutations, but also convolutions, stencils, scatter/gather, and broadcasting.

### Einsum.jl
{{badge Einsum}}
From README.md of this package:
> This package exports a single macro @einsum, which implements similar notation to the Einstein summation convention to flexibly specify operations on Julia Arrays, similar to numpy's einsum function (but more flexible!).

### OMEinsum.jl
{{badge OMEinsum}}
From README.md of this package:
> This is a repository for the Google Summer of Code project on Differentiable Tensor Networks. It implements one function that both computer scientists and physicists love, the Einstein summation

### Tensorial.jl
{{badge Tensorial}}
From the README of this package:

> [Tensorial.jl](https://github.com/KeitaNakamura/Tensorial.jl/)  provides statically sized Tensor type that is compatible with `AbstractArray`, similar to `SArray` from [StaticArrays.jl](https://github.com/JuliaArrays/StaticArrays.jl). In addition to supporting basic AbstractArray operations, the package offers a tensorial interface and several advanced features:
>
> * Contraction, tensor product (⊗), and a flexible `@einsum` macro for Einstein summation convention
> * A `@Symmetry` macro to define the tensor symmetries, eliminating unnecessary calculations
> * Automatic differentiation via `gradient` and `hessian` functions, leveraging [ForwardDiff.jl](https://github.com/JuliaDiff/ForwardDiff.jl)
> * Performance comparable to SArray


### TensorOperations.jl
{{badge TensorOperations}}

### TensorCast.jl
{{badge TensorCast}}

### ArrayMeta.jl
{{badge ArrayMeta}}

ArrayMeta.jl exists, but the package is not maintained and registered.

### Tortilla.jl
Tortilla.jl was announced in JuliaCon2018, but the package is not public yet.

* [For Loops 2.0: Index Notation and the Future of Tensor Compilers | Willow Ahrens | JuliaCon 2018](https://www.youtube.com/watch?v=Rp7sTl9oPNI)

## Star History
{{star_history Tullio Einsum OMEinsum TensorOperations TensorCast ArrayMeta Tensorial}}
