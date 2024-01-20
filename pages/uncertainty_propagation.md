+++
title = "Uncertainty Propagation"
+++

# Uncertainty Propagation
The two main Julia packages that provide uncertainty propagation are [Measurements.jl](https://github.com/JuliaPhysics/Measurements.jl) and [MontecarloMeasurements.jl](https://github.com/baggepinnen/MonteCarloMeasurements.jl).

The main difference is that Measurements.jl uses [linear error propagation theory](https://en.wikipedia.org/wiki/Propagation_of_uncertainty#Linear_combinations) to propagate errors, while MonteCarloMeasurements.jl uses Monte-Carlo methods, in a way that allows for propagation of probability distributions through functions, allowing nonlinear [uncertainty propagation](https://en.wikipedia.org/wiki/Propagation_of_uncertainty). 

This section is not yet written well. If you have used or developed Julia packages in this domain, we would love your help! Please visit the ["Contributing" section](https://github.com/JuliaPackageComparisons/JuliaPackageComparisons.github.io#contributing) of the [repository that hosts this website](https://github.com/JuliaPackageComparisons/JuliaPackageComparisons.github.io) for information on contributions.