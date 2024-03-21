+++
title = "Runtime"
+++

# Runtime
\toc

## Introduction
This page compares packages that test the runtime performance of code. This is also commonly know as "benchmarking". Julia base includes several important functions and macros that help you measure the runtime of your code, which are listed in the [reference for Julia base](https://docs.julialang.org/en/v1/base/base/). However, there are many clever tricks involved in good benchmarking, which are often best left to dedicated packages. If you want a gentle introduction to why we need such tricks, read [Why use packages to measure runtime](#why-use-packages-to-measure-runtime).

## Overview
The most popular and established packages is [BenchmarkTools.jl](#benchmarktools). The general recommendation is to use BenchmarkTools.

{{star_history BenchmarkTools Chairmarks}}
## Packages
### BenchmarkTools
{{badge BenchmarkTools}}
BenchmarkTools is is widely used, and beloved by the Julia community, who cares a lot about fast code. It is easy to use, capable, and very much battle-tested.

### Chairmarks
{{badge Chairmarks}}
Chairmarks.jl is a relatively new benchmarking package, which makes the following claim in it's [documentation](https://chairmarks.lilithhafner.com/stable/): "Chairmarks measures performance hundreds of times faster than BenchmarkTools without compromising on accuracy". So that is the upside. The downside is that it is not yet battle-tested. If want to run your benchmarks faster, then Chairmarks might be very interesting. This is particularly relevant for [packages that measure the runtime of other packages](#packages-that-measure-runtime-of-packages).

## Packages that measure runtime of packages
It is often interesting to see how the runtime changes between each commit to a package, to ensure that changes intended to add features or improve readability or correctness, do not accidentally cause runtime regression. Below are a list of packages that provide utilities for this, which generally build on the packages shown above.

{{star_history PkgBenchmark AirspeedVelocity BenchmarkCI PkgJogger}}

### PkgBenchmark
{{badge PkgBenchmark}}

### AirspeedVelocity
{{badge AirspeedVelocity}}

### BenchmarkCI
{{badge BenchmarkCI}}

### PkgJogger
{{badge PkgJogger}}

## Useful Links
- A lot of good discussion about why making a new package, initial bugs with Chairmarks, and general dicusssion on benchmarking can be found in the [release announcement of Chairmarks](https://discourse.julialang.org/t/chairmarks-jl/111096/3).

## Why use packages to measure runtime
The most basic way to measure runtime is to call record the time before and after running some code, and computing the difference:
```julia
julia> my_function(n) = inv(randn(n, n)) # Some costly matrix-inversion
my_function (generic function with 1 method)

julia> t_initial = time(); my_function(100); t_final = time();

julia> println("Elapsed time: $(t_final - t_initial)")
Elapsed time: 0.3160099983215332
```

Let's run it again, this time using the `@time` macro, which is much more convenient:
```julia
julia> @time my_function(100);
  0.000626 seconds (12 allocations: 207.406 KiB)
```

The results change a lot. This is mainly caused by the fact that `my_function` is compiled the first time we call it, but the compiled code is simply excecuted the next time. But even with the compilation done, the runtime varies:
```julia
julia> @time my_function(100);
  0.000660 seconds (12 allocations: 207.406 KiB)
```

Measuring runtime is always noisy. It depends on what other things you system is doing, how hot your CPU is, and a lot of other compilated things. The thing to realize however is that all the noise sources add to the runtime. The least noisy runtime measurement is therefore the _minimal runtime for some number of runs_. The packages listed under [Pakcages](#packages) will run your code in a loop, do fancy stuff like warmup, and help you find a balance between long waiting time, and accurate results, before returning this minimal runtime.