+++
title = "Units"
+++

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

Quick minimalist [UnitSystems.jl](https://github.com/chakravala/UnitSystems.jl) which is the more complete and scientifically sophisticated implementation with deep scientific nuance. Loads very fast but does not provide a `Quantity` type, which is in an optional package [Similitude.jl](https://github.com/chakravala/Similitude.jl).
> A `UnitSystem` is a consistent set of dimensional values selected to accomodate a particular use case standardization. It is possible to convert derived physical quantities from any `UnitSystem` specification into any other using accurate values. Eleven fundamental constants are used to govern a specific unit system consistent scaling. These are the constants `boltzmann`, `planckreduced`, `lightspeed`, `vacuumpermeability`, `electronmass`, `molarmass`, `luminousefficacy`, `angle`, `rationalization`, `lorentz`, and `gravity`. Different choices of natural units or physical measurements result in a variety of unit systems for many purposes.

This section is not yet written well. If you have used or developed Julia packages in this domain, we would love your help! Please visit the ["Contributing" section](https://github.com/JuliaPackageComparisons/JuliaPackageComparisons.github.io#contributing) of the [repository that hosts this website](https://github.com/JuliaPackageComparisons/JuliaPackageComparisons.github.io) for information on contributions.
