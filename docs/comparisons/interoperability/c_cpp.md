+++
title = "C & C++"
+++

# C & C++

\toc

## Packages

### Clang.jl
{{badge Clang}}

### CBinding.jl
{{badge CBinding}}

### Cxx.jl
{{badge Cxx}}

>The Julia C++ Foreign Function Interface (FFI) and REPL.

### CxxWrap.jl
{{badge CxxWrap}}

"What's the difference with Cxx.jl?" from its README:

>With Cxx.jl it is possible to directly access C++ using the @cxx macro from Julia. So when facing the task of wrapping a C++ library in a Julia package, authors now have two options:
>
>Use Cxx.jl to write the wrapper package in Julia code (much like one uses ccall for wrapping a C library)
>Use CxxWrap to write the wrapper completely in C++ (and one line of Julia code to load the .so)
>Boost.Python also uses the latter (C++-only) approach, so translating existing Python bindings based on Boost.Python may be easier using CxxWrap.

### jluna

There is also [jluna](https://github.com/Clemapfel/jluna).
From its README:

>Julia is a beautiful language, it is well-designed, and well-documented. Julia's C-API is also well-designed, less beautiful, and much less... documented.
>jluna aims to fully wrap the official Julia C-API, replacing it in projects with C++ as the host language, by making accessing Julia's unique strengths through C++ safe, hassle-free, and just as beautiful.

## References

* [C Interface (Julia official documentation)](https://docs.julialang.org/en/v1/base/c/)
* [Isaiah Norton: Automatic ccall wrapper generation with Clang.jl (JuliaCon 2015)](https://www.youtube.com/watch?v=Jt5sv-8iRGc)
* [CBinding.jl - bringing C’s nested structs/unions, alignment, bitfields, variadic functions to Julia](https://discourse.julialang.org/t/cbinding-jl-bringing-cs-nested-structs-unions-alignment-bitfields-variadic-functions-to-julia/25902)
* [Clang vs CBindingGen](https://discourse.julialang.org/t/clang-vs-cbindinggen/56693/10)
* [Jluna: a new Julia <-> C++ wrapper](https://discourse.julialang.org/t/jluna-a-new-julia-c-wrapper/77486)
* [Jluna, the Modern Julia Wrapper for C++, has entered 1.0 Beta](https://discourse.julialang.org/t/jluna-the-modern-julia-wrapper-for-c-has-entered-1-0-beta/80303)
* [A brief history of Cxx.jl (YouTube)](https://www.youtube.com/watch?v=bJiwjKIWgjM)
* [A brief history of Cxx.jl (pdf)](https://compiler-research.org/assets/presentations/K_Fischer_Cxx_jl.pdf)

## Star History
{{star_history Clang CBinding Cxx CxxWrap}}
