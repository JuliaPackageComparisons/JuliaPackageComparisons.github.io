+++
title = "Profiling"
+++

# Profiling
\toc

## Introduction
Profiling, in the context of programming, usually refers to the process of learning how much time your computer spends in the different parts of you program/function. In this way, you get a _profile_ of the runtime of your program. This can be immensely useful to identify bottlenecks of your code, and allows you to spend your time optimizing the code that actually takes the most time to run. This can save you from the rather normal situation of spending a long time making a certain part of the program run e.g. 1000 times faster, when that part only makes out a fraction (say 1%) of the total runtime of the program.

If you are interested in measuring the runtime of your program, see the [page comparing packages that measure runtime](\reflink{Runtime}).

If you are interested in identifying type-instabilities in your program, see [Cthulhu.jl](https://github.com/JuliaDebug/Cthulhu.jl).

## Overview

### The short version
- If you are using VSCode, just put `@profview` in front of the expression you want to profile. No package installation required. For more detail, see [VSCode's built-in profiler](#vscodes_built-in_profiler)
- [ProfileView.jl](#profileview) is both the oldest and most starred package, and is therefore a safe general choice.
- If you are using something else, there are multiple options. Some integrate well with Jupyter or Pluto notebooks, whereas others serve the profile as a locally hosted website in your browser, and others yet give you a standalone GUI window. Scroll through [Packages](#packages) for more detail.

If you are new to profiling and optimization of Julia code, [this](https://www.youtube.com/watch?v=pvduxLowpPY) video is a really good resource that goes through the process, showing how to use two of the most important Julia packages in the code-optimization domain.

### The long version
Julia has a standard library called [Profile](https://docs.julialang.org/en/v1/manual/profile/). It implements a "statistical profiler", meaning that samples are taken regularly during runtime. You can think of it like sampling a probability distribution - you will never perfectly know the true distribution, but with enough samples you can be pretty damn sure.

While the Profile standard library profiles the basic functionality, it is most useful when visualized. The most normal way to visualize a profile is as a "Flamegraph", which is handled by [FlameGraphs.jl](https://github.com/timholy/FlameGraphs.jl). However, to render than visualization, one would use yet another package. It is not important to understand the precise relationship between all the packages. Everything is neatly bundled up for you, the user, in one of the alternatives listed under [Packages](#packages).

## Packages
### VSCode's built-in profiler
While it is not a package, using functionality from the Julia extension for VSCode is the most convenient way to profile code (if you are already using VSCode). There is a [user guide on the VSCode profiler](https://www.julia-vscode.org/docs/stable/userguide/profiler/) with screenshots and detailed explanation about what is displayed, how to interpret it, and how to interact with the flamegraph.


### ProfileView
{{badge ProfileView}}
ProfileView.jl is a stand-alone visualizer based on GTK. It is the most starred, _and_ the oldest and most established alternative. It should be a suitable choice for most. If however you are running code in VSCode, or a notebook like Jupyter, other alternatives might work better for you.

### PProf
{{badge PProf}}
PProf.jl serves a local website for inspecting graphs, flamegraphs and more. It is the only alternative that does not build on [Flamegraphs.jl](https://github.com/timholy/FlameGraphs.jl), instead converting the output from the Profile standard library directly to [google's pprof](https://github.com/google/pprof). The only hard downside is that PProf.jl looses the sample ordering information captured in FlameGraphs.jl, according to the [Flamegraphs.jl README](https://github.com/timholy/FlameGraphs.jl?tab=readme-ov-file#flamegraphs). But if this is not important to you, PPros features "excellent support for interaction, filtering, aggregation, and viewing source code", according to the same README.

### StatProfilerHTML
{{badge StatProfilerHTML}}
StatProfilerHTML.jl produces HTML and presents some additional summaries, and also integrates well with Jupyter notebooks.

### ProfileCanvas
{{badge ProfileCanvas}}
ProfileCanvas.jl is a HTML canvas based profile viewer UI, used by the Julia VS Code extension, but can also generate interactive HTML files.

### ProfileSVG
{{badge ProfileSVG}}
ProfileSVG.jl renders SVG.

### ProfileVega
{{badge ProfileVega}}
ProfileVega.jl uses VegaLight and integrates well with Jupyter notebooks.

## Useful links
- The general [Performance Tips](https://docs.julialang.org/en/v1/manual/performance-tips/) for Julia.

## Star history
{{star_history ProfileView PProf StatProfilerHTML ProfileCanvas ProfileSVG ProfileVega}}