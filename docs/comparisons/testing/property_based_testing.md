+++
title = "Property Based Testing"
+++

# Property Based Testing
\toc

## Introduction
Programming and mathematics have always interested similar minds, and tackled related problems. Mathematics has strong formalism in place about the properties of certain objects (scalars, vectors, matrices) under certain operations (addition, multiplication, transposition), or even properties of the operators themselves. Property Based Testing (PBT) is an attempt to use computer programming to test if certain properties hold for certain objects.

## Overview
There are two main packages in this domain: [PropCheck.jl](https://github.com/Seelengrab/PropCheck.jl), and [Suppositon.jl](https://github.com/Seelengrab/Supposition.jl). Both packages are created by the same person, who has made a comparison page of the two packages in the [FAQ of the Supposition.jl docs](https://seelengrab.github.io/Supposition.jl/stable/faq.html). The general takeaway is that PropCheck.jl is in maintainance mode, and that Supposition.jl should be concidered a superior successor to PropCheck.jl.

Supposition.jl is heavily inspired by the python library [Hypothesis](https://hypothesis.readthedocs.io/en/latest/), whereas PropCheck.jl is inspired by the Haskell library Hedgehog. For those interested in the differences beyond the surface level, the package author reccomends [this comparison blogpost between QuickCheck, Hedgehog and Hypothesis](https://seelengrab.github.io/articles/The%20properties%20of%20QuickCheck,%20Hedgehog%20and%20Hypothesis/) as a starting point.

{{star_history PropCheck Supposition}}
## Packages

### PropCheck.jl
{{badge PropCheck}}

### Supposition.jl
{{badge Supposition}}

## Related Posts
- [Supposition.jl release announcement](https://discourse.julialang.org/t/ann-supposition-jl/111338).
