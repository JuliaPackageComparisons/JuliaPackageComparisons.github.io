+++
title = "Intervals"
+++

# Intervals
There are several Julia packages for [interval sets](https://en.wikipedia.org/wiki/Interval_(mathematics)) and [interval arithmetic](https://en.wikipedia.org/wiki/Interval_arithmetic).

\toc

## Overview
IntervalSets.jl and Intervals.jl both focus on working with interval sets, in a mathematical sense (as opposed to a numerical sense). While there have been discussions on merging the two (see [IntervalSets.jl#67](https://github.com/JuliaMath/IntervalSets.jl/issues/67) and [Intervals.jl#94](https://github.com/invenia/Intervals.jl/issues/94)), they currently still exist as separate packages.

IntervalArithmetic.jl on the other hand focuses on interval arithmetic, i.e. carrying out operations like $a+b$ where $a$ or $b$ (or both!) are intervals instead of numbers.
There were issues to add an dependency on IntervalSets.jl, but this also has not yet been realized.

* [IntervalArithmetic#345](https://github.com/JuliaIntervals/IntervalArithmetic.jl/issues/345)
* [IntervalArithmetic#366](https://github.com/JuliaIntervals/IntervalArithmetic.jl/issues/366)

## Packages
### IntervalSets.jl
{{badge IntervalSets}}

### Intervals.jl
{{badge Intervals}}

### IntervalArithmetic.jl
{{badge IntervalArithmetic}}
Example of adding an interval and a number:
```julia
julia> a = 1;

julia> b = interval(3, 4)
[3.0, 4.0]_com

julia> a+b
[4.0, 5.0]_com_NG
```

Examples of applying a function to an interval:
```julia
julia> f(interval(3, 4))
[9.0, 16.0]_com

julia> f(interval(-3, 4))
[0.0, 16.0]_com
```

To quote from the [intro](https://juliaintervals.github.io/IntervalArithmetic.jl/stable/intro/) of the IntervalArithmetic.jl docs:
> Since f(x) does not contain 0, the true range of the function $f$ over the interval $[3,4]$ is guaranteed not to contain 00, and hence we obtain the following property.
> 
> Theorem: $f$ has no root in the interval $[3,4]$.
> 
> This theorem has been obtained using floating-point computations!

## Star History
{{star_history IntervalSets Intervals IntervalArithmetic}}
