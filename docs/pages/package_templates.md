+++
title = "Package Templates"
+++

# Package Templates
There are several ways to create a Julia packages from templates.

\toc

## Packages
### PkgTemplates.jl
{{badge PkgTemplates}}

This package is the the most popular package generator.

### PkgSkeleton.jl
{{badge PkgSkeleton}}

PkgSkeleton is another package generator.

### Pkg.jl
{{badge Pkg}}

Pkg.jl does not have templates, but it can create a minimum package with [`generate` command](https://pkgdocs.julialang.org/v1/creating-packages/#Generating-files-for-a-package).

## CLI tools

### Ion
[Ion](https://rogerluo.dev/Ion/) is a CLI toolkit for Julia developers, and can generate a new package with pre-defined templates.

See [Ion Tutorial](https://rogerluo.dev/Ion/docs/commands/new/) for more information.

## GitHub repository templates

Some people use GitHub repository templates to generate a new Julia package.
Here are some examples:

* [quinnj/Example.jl](https://github.com/quinnj/Example.jl)
* [JuliaSmoothOptimizers/JSOTemplate.jl](https://github.com/JuliaSmoothOptimizers/JSOTemplate.jl)

## Star History
{{star_history PkgTemplates PkgSkeleton Pkg}}
