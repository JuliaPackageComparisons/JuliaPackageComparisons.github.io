+++
title = "Unit Testing"
+++

# Unit Testing

\toc

## Overview
The main package for unit testing in Julia is actually not a package, but the standard library [Test.jl](https://docs.julialang.org/en/v1/stdlib/Test/). It comes included, and is a quite capable unit testing framework. **This standard library is widely used, and should be good enough for most people in most cases**.

However, there are clearly those who want more, because there are a few alternatives/additions. 

{{star_history FactCheck Spec}}

It is also worth mentioning [GitHubActions.jl](https://github.com/julia-actions/GitHubActions.jl?tab=readme-ov-file#in-tests), which has functionality for running tests with GitHub's CI.

## Packages
### FactCheck.jl
{{badge FactCheck}}
FactCheck.jl is a Julia testing framework inspired by the Midje library for Clojure. It aims to add more functionality over the basic Base.Test.

### Spec.jl
{{badge Spec}}
Spec.jl is small library for specfiying correctness properties of programs. These specifications can be used as documentation, for testing, and for debugging.