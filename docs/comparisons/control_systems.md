+++
title = "Control Systems"
+++

# Control Systems
[Wikipedia](https://en.wikipedia.org/wiki/Control_system) states the following:
> A control system manages, commands, directs, or regulates the behavior of other devices or systems using control loops.

This section covers packages that provide the tools needed to create and analyze control systems in Julia.

\toc

## ControlSystems.jl
{{badge ControlSystems}}
There is a github organization called [JuliaControl](https://github.com/JuliaControl/), the star of which is [ControlSystems.jl](https://github.com/JuliaControl/ControlSystems.jl). It is a Control Systems Toolbox for Julia, and provides a lot of common functionality for working with control systems.

## ModelPredictiveControl.jl
{{badge ModelPredictiveControl}}
A new and much less used/tested package is [ModelPredictiveControl.jl](https://github.com/franckgaga/ModelPredictiveControl.jl). I the author can not speak to its capabilities.

## Other
While not directly aimed at control systems, [ModelingToolkit.jl](https://github.com/SciML/ModelingToolkit.jl) is also capable of performing some of the modeling and analysis typical for this domain. It is however a more general framework with a different focus, and so, will require more lines of code to perform similar analysis. The upside is that due to its general and flexible nature, it may be easier to extend for some projects as they grow.
