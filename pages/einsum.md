# Einsum
In linear algebra and mathematical physics, there is a notational convention called [Einstein Notation](https://en.wikipedia.org/wiki/Einstein_notation). The python package numpy implements a function called [einsum](https://numpy.org/doc/stable/reference/generated/numpy.einsum.html), which is the first hit when googling the term. Several Julia packages exists that implement einsum functionality.
\toc

## Tullio.jl
The package [Tullio.jl](https://github.com/mcabbott/Tullio.jl) implements a macro `@tullio`, which it describes as 
> a very flexible einsum macro. It understands many array operations written in index notation -- not just matrix multiplication and permutations, but also convolutions, stencils, scatter/gather, and broadcasting.

## Einsum.jl
There is also [Einsum.jl](https://github.com/ahwillia/Einsum.jl). 
> This package exports a single macro @einsum, which implements similar notation to the Einstein summation convention to flexibly specify operations on Julia Arrays, similar to numpy's einsum function (but more flexible!).

## OMEinsum.jl
Finally, there is [OMEinsum.jl](https://github.com/under-Peter/OMEinsum.jl):
> This is a repository for the Google Summer of Code project on Differentiable Tensor Networks. It implements one function that both computer scientists and physicists love, the Einstein summation