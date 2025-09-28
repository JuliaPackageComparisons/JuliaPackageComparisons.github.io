+++
title = "Causal Inference"
+++

# Causal Inference

[Casual Inference](https://thedecisionlab.com/reference-guide/statistics/casual-inference) refers to the theory and practice of quantifying how stochastic variables influence each other.

## Literature

* [Hernán & Robins. Causal Inference: What If](https://miguelhernan.org/whatifbook) with [examples in Julia](https://github.com/jrfiedler/causal_inference_julia_code).
* [Scott Cunningham. Causal Inference: The Mixtape](https://mixtape.scunning.com/) with [github repo](https://github.com/Mixtape-Sessions).
* [Nick Huntington-Klein. The Effect](https://theeffectbook.net/) with [homework](https://github.com/NickCH-K/TheEffectAssignments) and [code](https://github.com/NickCH-K/causalbook) in R and python.
* [Peter Spirtes, Clark Glymour, and Richard Scheines. Causation, Prediction, and Search](https://philarchive.org/archive/SPICPA-2)

## Tutorials
* [Causal discovery using Julia: A brief introduction, a simulation, and a possible use case](https://towardsdev.com/causal-discovery-using-julia-a-brief-introduction-a-simulation-and-a-possible-use-case-d2f2be2bfc02)

## Discussions

* [Causal inference in Julia 2025?](https://discourse.julialang.org/t/causal-inference-in-julia-2025/126001)

# Packages

## CausalInference.jl
{{badge CausalInference}}
> Causal inference, graphical models and structure learning in Julia 
[CausalInference.jl](https://github.com/mschauer/CausalInference.jl) is the oldest and probably the most comprehensive package in Causal Inference. 

[Announcement thread](https://discourse.julialang.org/t/ann-causalinference-jl-causal-inference-in-julia/6154)

From the package README:

Julia package for causal inference and analysis, graphical models and structure learning.

This package contains code for the PC algorithm and the extended FCI algorithm, the score based greedy equivalence search (GES) algorithm, the Bayesian Causal Zig-Zag sampler and a function suite for adjustment set search.


## CausalTables.jl
{{badge CausalTables}}
> A new type of Table to store and simulate data for causal inference in Julia. 

Paper: [CausalTables.jl: Simulating and storing data for statistical causal inference in Julia](https://joss.theoj.org/papers/10.21105/joss.07580)

From the package README:

 [CausalTables.jl](https://github.com/salbalkus/CausalTables.jl) provides a common interface for manipulating tabular data for causal inference. While packages like [CausalInference.jl](https://mschauer.github.io/CausalInference.jl/latest/) only focus on causal graphs and discovery algorithms, the `CausalTable` interface provides utility functions to clean and manipulate practical datasets for input into statistical estimators. The simulation capabilities of `CausalTables.jl` are similar to those of probabilistic programming languages like [Turing.jl](https://turing.ml/dev/) or [Gen.jl](https://www.gen.dev/); however, unlike these packages, with `CausalTables.jl` users can extract the true conditional distributions of relevant variables from a dataset in closed-form *after* data has been generated. This makes it easy to extract parameters like ground-truth ("oracle") conditional means or propensity scores, which are often helpful for testing whether an estimator is behaving as intended.

## CausalELM.jl
{{badge CausalELM}}
> Taking causal inference to the extreme! 

From the Package README:

CausalELM provides easy-to-use implementations of modern causal inference methods in a lightweight package. While CausalELM implements a variety of estimators, they all have one thing in common—the use of machine learning models to flexibly estimate causal effects. This is where the ELM in CausalELM comes from—the machine learning model underlying all the estimators is an extreme learning machine (ELM). ELMs are a simple neural network that use randomized weights and offer a good tradeoff between learning non-linear dependencies and simplicity. Furthermore, CausalELM implements bagged ensembles of ELMs to reduce the variance resulting from randomized weights.

JuliaCon 2024 presentation: [Causal Machine Learning with CausalELM ](https://www.youtube.com/watch?v=hh_cyj8feu8&t=26s)

## TMLE.jl
{{badge TMLE}}
> A Julia implementation of the Targeted Minimum Loss-based Estimation 

From the package README:

[TMLE.jl](https://github.com/TARGENE/TMLE.jl) is a Julia package that implements [Targeted Maximum Likelihood Estimation](https://link.springer.com/book/10.1007/978-1-4419-9782-1) (TMLE), a general framework for causal effect estimation that combines machine learning with principles from semiparametric statistics. TMLE provides doubly robust, efficient, and flexible estimation of causal parameters in observational and experimental studies.

## Turing.jl
{{badge Turing}}

[Turing.jl](https://github.com/TuringLang/Turing.jl) is a DSL for Bayesian inference.
It is probably the most complete package for Bayesian inference in Julia.

## Associations.jl
{{badge Associations}}
> Algorithms for quantifying associations, independence testing and causal inference from data. 

From the package README:

[Associations.jl]() is a package for quantifying associations, independence testing and causal inference.

**Key features**

- **Association API**: includes measures and their estimators for pairwise, conditional and other forms of 
    association from conventional statistics, from dynamical systems theory, and from information theory: partial correlation, distance correlation, (conditional) mutual information, transfer entropy, convergent cross mapping and a lot more!
- **Independence testing API**, which is automatically compatible with
    every association measure estimator implemented in the package. 
- **Causal (network) inference API** integrating the association measures and independence testing framework.

**Additional features**

Extending on features from [ComplexityMeasures.jl](https://github.com/JuliaDynamics/ComplexityMeasures.jl),
we also offer 

- Discretization API for multiple (multivariate) input datasets.
- Multivariate counting and probability estimation API.
- Multivariate information measure API

*Previously, this package was called CausalityTools.jl*.

## RxInfer.jl
{{badge RxInfer}}
> Julia package for automated Bayesian inference on a factor graph with reactive message passing 

[RxInfer.jl main page](https://rxinfer.com/) contains lots of examples.


# Star History

{{star_history CausalInference CausalTables CausalELM TMLE Turing Associations RxInfer}}

[Turing.jl](https://github.com/TuringLang/Turing.jl) is dominating the graph, so here it is without Turing.jl

{{star_history CausalInference CausalTables CausalELM TMLE Associations RxInfer}}

