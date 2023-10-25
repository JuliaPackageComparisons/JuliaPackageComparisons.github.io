# Signal Processing
## General packages
DSP.jl, SignalsBase.jl, SampledSignals.jl, SignalAnalysis.jl

## Specific domains
### Fourier Transformations
FFTW.jl

### Peak Finding
By "peak" we refer to a numerical value larger than any immediate neighbour. A simple example is a 
vector such as `[1, 2, 3, 1]`, which has a peak at it's third index. Functions also have peaks, but in a 
continous context. Multidimensional arrays/functions also have peaks, which are significantly harder to find.  

Peaks.jl, FindPeaks.jl, Images.jl

This section is not yet written. If you have used or developed Julia packages in this domain, we would love your help! Please visit the ["Contributing" section](https://github.com/JuliaPackageComparisons/JuliaPackageComparisons.github.io#contributing) of the [repository that hosts this website](https://github.com/JuliaPackageComparisons/JuliaPackageComparisons.github.io) for information on contributions.

### M/EEG
PyMNE.jl is a wrapper-toolbox around the popular mne-python M/EEG analysis toolbox

NeuroAnalyzer.jl is a non-registered, but feature strong package for the analysis of EEG data (https://neuroanalyzer.org/).

Unfold.jl is a toolbox to analyze event-based timeseries using regression with a focus on EEG (Electroencephalography) data. It is based on regression, and includes simulation related toolboxes like (UnfoldSim.jl), plotting (UnfoldMakie.jl). It supports deconvolution, hierarchical and non-linear (spline)-effects.
