+++
title = "Notebooks"
+++

# Notebooks
Notebooks are a type of [Integrated Development Environment (IDE)](https://en.wikipedia.org/wiki/Integrated_development_environment) accessed through the web-browser, where code at text are interleaved.
They are particularly useful for sharing and showing computations.


## Jupyter (IJulia)
{{badge IJulia}}

> Julia kernel for Jupyter

[Jupyter](https://github.com/jupyter/) is the original notebook. The name is a reference to the three core programming languages supported by Jupyter: Julia, Python and R[^1]. It 
It is very mature, and used by a large community. This should probably be the first one you try.

A Jupyter notebook is organized in "cells". 
Cells can contain either text (in [markdown](https://en.wikipedia.org/wiki/Markdown) format) or code.
The code is evaluated in the kernel as if you were entering the same code into a Julia session.

The [Colab](https://colab.google/) service makes it easy to test Jupyter without needing to install anything locally.
It also includes a Julia kernel.[^2]

The main kernels supported by Jupyter are :
* Python: [IPython](https://github.com/ipython/ipython) (the default kernel shipped with Jupyter)
* Julia: [IJulia.jl](https://github.com/JuliaLang/IJulia.jl)
* R: [IRkernel](https://github.com/IRkernel/IRkernel), [ark](https://github.com/posit-dev/ark) (a new kernel developed by [Posit](https://posit.co/) (previously RStudio) for the [Positron](https://github.com/posit-dev/positron) IDE)

## Pluto
{{badge Pluto}}
> 🎈 Simple reactive notebooks for Julia 

Where Jupyter is multi language (and mainly Python), [Pluto.jl](https://github.com/fonsp/Pluto.jl) is a Julia project and mainly (only?) supports Julia. 

It also differs from Jupyter in the execution model.
Where the state of the Jupyter kernel depends on the order in which cells were run, Pluto maintains a consistent state, where all cells are updated in a [reactive](https://en.wikipedia.org/wiki/Reactive_programming) manner.

An other difference is that cells in Pluto only contain a single line of code.

Many people are very happy with the Pluto model, where the state is always consistent (like in a spreadsheet). Others prefer the linear execution model of Jupyter notebooks, which is more similar to an interactive Julia session, but where you often need to "restart the kernel and run from the top" to make sure all is consistent.

You can test Pluto in the browser without installing it at <https://binder.plutojl.org/>.

The author of Pluto.jl gave a talk ([YouTube link](https://youtu.be/Rg3r3gG4nQo?feature=shared)) at JupyterCon 2023, which is a good demonstration of how to use Pluto.jl.


## Neptune
{{badge Neptune}}
> Simple (Pluto-based) non-reactive notebooks for Julia 

From the [README](https://github.com/compleathorseplayer/Neptune.jl):

Neptune originated as a fork of the Notebook platform Pluto, for those (like Data Scientists) who have requirements which conflict with the 'reactive' aspect of Pluto (where all cells re-evaluate every time a single cell is evaluated or re-evaluated). It may turn out to be that Neptune is only an interim solution, and that the capabilities it enables will eventually exist within the Pluto, but that it is not certain. Users with projects or applications which are not logically sequential or linear in execution/design, or which do not load external scripts, should first try Pluto.

See also [announcement](https://discourse.julialang.org/t/announcing-neptune-jl-now-updated-to-multi-line-cells/54088).

## BonitoBook
{{badge BonitoBook}}
> BonitoBook excels in plotting, customizability, ai integration and language interoperability, making it perfect for exploring data, building dashboards and any other interactive application.

[BonitoBook](https://github.com/SimonDanisch/BonitoBook.jl) was [announced](https://discourse.julialang.org/t/ann-bonitobook-jl/131442) in 2025 by [Simon Danisch](https://github.com/SimonDanisch) who is also the main author of [Bonito](https://github.com/simondanisch/Bonito.jl) and [Makie](https://github.com/MakieOrg/Makie.jl). 
It integrates very well with Makie, and part of the motivation for BonitoBook seems to be that Makie support in Jupyter and Pluto is limited.

BonitoBook uses the linear execution model as Jupyter.

From the [website](https://bonitobook.org/website/):

BonitoBook is a Julia-native interactive notebook system built on [Bonito.jl](https://github.com/simondanisch/Bonito.jl) that seamlessly combines multi-language execution, AI integration, and modern web-based editing in one powerful platform. 

### License
Note that BonitoBook is not under a free license, but the [PolyForm Noncommercial License](https://github.com/SimonDanisch/BonitoBook.jl/blob/main/LICENSE).

## Quarto
> Open-source scientific and technical publishing system built on Pandoc. 

[Quarto](https://github.com/quarto-dev/quarto-cli) developed by [Posit PBC](https://posit.co) (formerly [RStudio](https://en.wikipedia.org/wiki/Posit_PBC)).

As Jupyter, Quarto is not a Julia project, but supports a Julia kernel as well as Python and R.

A quarto document is written in [Markdown](https://en.wikipedia.org/wiki/Markdown) with metadata in [YAML](https://en.wikipedia.org/wiki/YAML) code in code-blocks.

From the README: 
Quarto is an open-source scientific and technical publishing system built on [Pandoc](https://pandoc.org). Quarto documents are authored using [Markdown](https://en.wikipedia.org/wiki/Markdown), an easy to write plain text format.

In addition to the core capabilities of Pandoc, Quarto includes:

1.  Embedding code and output from Python, R, Julia, and JavaScript via integration with [Jupyter](https://jupyter.org/), [Knitr](https://yihui.org/knitr/), and [Observable](https://github.com/observablehq/).

2.  A variety of extensions to Pandoc Markdown useful for technical writing including cross-references, sub-figures, layout panels, hoverable citations and footnotes, callouts, and more.

3.  A project system for rendering groups of documents at once, sharing options across documents, and producing aggregate output like [websites](https://quarto.org/docs/websites/) and [books](https://quarto.org/docs/books/).

4.  Authoring using a wide variety of editors and notebooks including [JupyterLab](https://quarto.org/docs/tools/jupyter-lab.html), [RStudio](https://quarto.org/docs/tools/rstudio.html), and [VS Code](https://quarto.org/docs/tools/vscode.html).

5.  A [visual Markdown editor](https://quarto.org/docs/visual-editor/) that provides a productive writing interface for composing long-form documents.

Learn more about Quarto at <https://quarto.org>.

## Visual Studio Code (vscode) extension: julia-vscode
>  Julia extension for Visual Studio Code

[vscode](https://github.com/microsoft/vscode) is the most popular editor for editing Julia code.
Julia is well supported through the [julia-vscode](https://github.com/julia-vscode/julia-vscode) extension.

Vscode also has support for editing (an evaluating) Jupyter notebooks.

## Positron
> Positron, a next-generation data science IDE 

[Positron](https://github.com/posit-dev/positron) is a fork of [vscode](https://github.com/microsoft/vscode) optimized for data science.
It supports Julia through the [IJulia.jl](https://github.com/JuliaLang/IJulia.jl) Jupyter kernel, but there is [room for improvement](https://github.com/posit-dev/positron/issues/3679).

From the README:

What is [Positron](https://positron.posit.co/)?

- A next-generation data science IDE built by [Posit PBC](https://posit.co/)
- An extensible, polyglot tool for writing code and exploring data
- A familiar environment for reproducible authoring and publishing

# Star History
{{star_history IJulia Pluto Neptune BonitoBook}}



[^1]: <https://en.wikipedia.org/wiki/Project_Jupyter>
[^2]: [Julia in Colab](https://discourse.julialang.org/t/julia-in-colab/126600).
