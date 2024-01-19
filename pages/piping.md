+++
title = "Piping"
+++

# Piping
[Wikipedia](https://en.wikipedia.org/wiki/Pipeline_(software)) describes a software pipeline as a "chain of processing elements, arranged so that the output of each element is the input of the next". Julia has [native piping functionality](https://docs.julialang.org/en/v1/manual/functions/#Function-composition-and-piping) in the `|>` operator, allowing `f(g(x))` to be written as `x |> g |> f`. However, once you want to do mode advanced operations like using multi-argument functions, the core functionality is lacking. A [pull-request](https://github.com/JuliaLang/julia/pull/24990) was created to address this in 2017, but progress has halted. Instead, there is now a number of different packages that implement advanced piping, in slightly different flavours.

The different packages that implement more advanced piping functionality are listed in the table of contents below

\toc

## Chain.jl
{{badge Chain}}
[Chain.jl](https://github.com/jkrumbiegel/Chain.jl) is the most starred package that purely implements piping functionality. It describes itself as follows:
> A Julia package for piping a value through a series of transformation expressions using a more convenient syntax than Julia's native piping functionality.

## Lazy.jl
{{badge Lazy}}
Lazy.jl implements a lot of other functionality, but discussed piping in particular under [this section](https://github.com/MikeInnes/Lazy.jl#macros) of the readme

## Pipe.jl
{{badge Pipe}}
[Pipe.jl](https://github.com/oxinabox/Pipe.jl) describes itself as follows:
> An enhancement to julia piping syntax
