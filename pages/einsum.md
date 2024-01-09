# Einsum
In linear algebra and mathematical physics, there is a notational convention called [Einstein Notation](https://en.wikipedia.org/wiki/Einstein_notation). The python package numpy implements a function called [einsum](https://numpy.org/doc/stable/reference/generated/numpy.einsum.html), which is the first hit when googling the term. Several Julia packages exists that implement einsum functionality.
\toc

## Tullio.jl

@@badge
[![GitHub Repo stars](https://img.shields.io/github/stars/mcabbott/Tullio.jl?style=social)](https://github.com/mcabbott/Tullio.jl)
[![GitHub last commit (branch)](https://img.shields.io/github/last-commit/mcabbott/Tullio.jl/master)](https://github.com/mcabbott/Tullio.jl/commits/master/)
[![Tullio Downloads](https://shields.io/endpoint?url=https://pkgs.genieframework.com/api/v1/badge/Tullio)](https://pkgs.genieframework.com?packages=Tullio)
@@

The package [Tullio.jl](https://github.com/mcabbott/Tullio.jl) implements a macro `@tullio`, which it describes as 
> a very flexible einsum macro. It understands many array operations written in index notation -- not just matrix multiplication and permutations, but also convolutions, stencils, scatter/gather, and broadcasting.

## Einsum.jl

@@badge
[![GitHub Repo stars](https://img.shields.io/github/stars/ahwillia/Einsum.jl?style=social)](https://github.com/ahwillia/Einsum.jl)
[![GitHub last commit (branch)](https://img.shields.io/github/last-commit/ahwillia/Einsum.jl/master)](https://github.com/ahwillia/Einsum.jl/commits/master/)
[![BasicBSpline Downloads](https://shields.io/endpoint?url=https://pkgs.genieframework.com/api/v1/badge/Einsum)](https://pkgs.genieframework.com?packages=Einsum)
@@

There is also [Einsum.jl](https://github.com/ahwillia/Einsum.jl). 
> This package exports a single macro @einsum, which implements similar notation to the Einstein summation convention to flexibly specify operations on Julia Arrays, similar to numpy's einsum function (but more flexible!).

## OMEinsum.jl

@@badge
[![GitHub Repo stars](https://img.shields.io/github/stars/under-Peter/OMEinsum.jl?style=social)](https://github.com/under-Peter/OMEinsum.jl)
[![GitHub last commit (branch)](https://img.shields.io/github/last-commit/under-Peter/OMEinsum.jl/master)](https://github.com/under-Peter/OMEinsum.jl/commits/master/)
[![OMEinsum Downloads](https://shields.io/endpoint?url=https://pkgs.genieframework.com/api/v1/badge/OMEinsum)](https://pkgs.genieframework.com?packages=OMEinsum)
@@

Finally, there is [OMEinsum.jl](https://github.com/under-Peter/OMEinsum.jl):
> This is a repository for the Google Summer of Code project on Differentiable Tensor Networks. It implements one function that both computer scientists and physicists love, the Einstein summation