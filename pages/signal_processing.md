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
