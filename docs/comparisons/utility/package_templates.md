+++
title = "Package Templates"
+++

# Package Templates
There are several ways to create a Julia packages from templates.

\toc

## Packages
### PkgTemplates.jl
{{badge PkgTemplates}}

> Create new Julia packages, the easy way

This package is the the most popular package generator.

It helps you set up the package structure, git repository, CI automations for building documentation, running tests, checking code coverage and more.

### PackageMaker.jl
{{badge PackageMaker}}

> GUI for PkgTemplates.jl: "Creating new Julia packages, the easy way" - made a bit simpler.

From the package README:

This package allows you to create either a new package or a new project.
It implements a subset of [PkgTemplates.jl](https://github.com/JuliaCI/PkgTemplates.jl) features (which subset hopefully covers >90% of its use cases).
It also adds a couple of features of its own, e.g. ability to create Julia projects, or adding dependencies to projects or packages being created.
Being a GUI app, it should be mostly self-explanatory, and external links for more information are provided from the GUI, too.

### PkgSkeleton.jl
{{badge PkgSkeleton}}

> Generate Julia package skeletons using a simple template system

From the package README:

Julia package for creating new packages and updating existing ones, following common practices and workflow recommendations.

Design principles:

* Keep it simple: do nothing more than substitute strings into templates, with a few safeguards. This keeps the code simple: currently less than 300 LOC without docstrings. For me, this covers 99% of the use cases; the rest I edit manually.
* Tread ligthly: don't modify uncommitted files (unless asked to, but really don't do that), or files with the same content (to preserve timestamps).
* Assume that tooling for packages will keep changing, make it easy to update.


### BestieTemplate.jl
{{badge BestieTemplate}}

[BestieTemplate.jl](https://github.com/JuliaBesties/BestieTemplate.jl) 

> Template for Julia Programming Language packages using the copier engine.

A newer package generator announced at JuliaCon2024.

The main features of this package/template are:

* It provides a curated (opinionated) list of tools and best practices for Julia package development
* It can be applied and reapplied to existing packages, allowing the updates in the template to be imported into the package

It is a bit heavy as it is based on the [copier](https://copier.readthedocs.io/en/stable/) python package.

All of the options are listed [here](https://juliabesties.github.io/BestieTemplate.jl/stable/30-questions/#Table-format).

###

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
{{star_history PkgTemplates PkgSkeleton Pkg BestieTemplate PackageMaker}}
