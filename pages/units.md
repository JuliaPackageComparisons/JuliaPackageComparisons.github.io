# Units
Attaching physical units directly to numbers allows things such as automatic unit conversions, and automatic unit checking. There are several packages that add such functionality to Julia.

\toc

## Unitful.jl
{{badge Unitful}}

The most mature package for working with units is [Unitful.jl](https://github.com/PainterQubits/Unitful.jl). Is handles a wide variety of units, unit conversion, and unit checking. It describes it's goals as follows:
> Unitful is a Julia package for physical units. We want to support not only SI units but also any other unit system. We also want to minimize or in some cases eliminate the run-time penalty of units. There should be facilities for dimensional analysis. All of this should integrate easily with the usual mathematical operations and collections that are found in Julia base.

There is a rich ecosystem around Unitful that implements things such as plotting recipes, and specific units for specific fields.

## DynamicQuantities.jl
{{badge DynamicQuantities}}

A newer package for working with units is [DynamicQuantities.jl](https://github.com/SymbolicML/DynamicQuantities.jl). It describes itself as follows:
> DynamicQuantities defines a simple statically-typed Quantity type for Julia. Physical dimensions are stored as a value, as opposed to a parametric type, as in Unitful.jl. This can greatly improve both runtime performance, by avoiding type instabilities, and startup time, as it avoids overspecializing methods.

## UnitSystems.jl
{{badge UnitSystems}}

While it is not recommended above previously mentioned alternatives, there is also [UnitSystems](https://github.com/chakravala/UnitSystems.jl). The author can not speak to it's ability.

This section is not yet written well. If you have used or developed Julia packages in this domain, we would love your help! Please visit the ["Contributing" section](https://github.com/JuliaPackageComparisons/JuliaPackageComparisons.github.io#contributing) of the [repository that hosts this website](https://github.com/JuliaPackageComparisons/JuliaPackageComparisons.github.io) for information on contributions.
