+++
title = "DataFrames"
+++

# Dataframes
\toc

## Introduction
A DataFrame is a tabular data format. Conceptually, a column in a DataFrame represents a single variable for all observations, and a row represents all variables for a single observation:

|var1|var2|var3|
|---|---|---|
|obs1.var1|obs1.var2|obs1.var3|
|obs2.var1|obs2.var2|obs2.var3|
|obs3.var1|obs3.var2|obs3.var3|

This way to organize data is extremely widespread, which makes it even more powerful due to the number of tools for visualization and analysis that can handle data in this format.

## Overview
[DataFrames.jl](#dataframesjl) is a long-standing Julia Package that implements DataFrames. Is it very stable, and has a principled approach to stability and functionality. It is the recommended option for most users.

{{star_history DataFrames JuliaDB Tidier InMemoryDatasets DTables}}
## Packages


### DataFrames.jl
{{badge DataFrames}}
The de-facto package for DataFrames in Julia. One of the highest quality packages in the Julia ecosystem.

### JuliaDB.jl
{{badge JuliaDB}}
JuliaDB is unmaintained, and it's README recommends using alternatives.

### Tidier.jl
{{badge Tidier}}
From the README:
> Tidier.jl is a data analysis package inspired by R's tidyverse and crafted specifically for Julia. Tidier.jl is a meta-package in that its functionality comes from a series of smaller packages. Installing and using Tidier.jl brings the combined functionality of each of these packages to your fingertips.

### InMemoryDatasets.jl
{{badge InMemoryDatasets}}
InMemoryDatasets is a fresh effort on DataFrames in Julia. In it's [release annoucement](https://discourse.julialang.org/t/ann-a-new-lightning-fast-package-for-data-manipulation-in-pure-julia/78197), the main improvement upon DataFrames.jl appears to be speed, but apparently without downside.

### DTables.jl
DTables features "Distributed table structures and data manipulation operations built on top of Dagger.jl".

This section is not yet well written. If you have used or developed Julia packages in this domain, we would love your help! Please visit the ["Contributing" section](https://github.com/JuliaPackageComparisons/JuliaPackageComparisons.github.io#contributing) of the [repository that hosts this website](https://github.com/JuliaPackageComparisons/JuliaPackageComparisons.github.io) for information on contributions.
