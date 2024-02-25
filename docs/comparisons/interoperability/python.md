+++
title = "Python"
+++

# Python
While Julia is great, it is not the only programming language around. This section will compare packages that allow [interoperability](https://en.wikipedia.org/wiki/Interoperability) between Julia and other programming languages. This typically means calling Julia from another language, or calling another language from Julia.

Many of the packages listed in this section are part of the github organization ["JuliaInterop"](https://github.com/JuliaInterop).

\toc

## Packages

### PyCall.jl
{{badge PyCall}}

### PythonCall.jl
{{badge PythonCall}}

PythonCall.jl descrives the difference from PyCall.jl in their README.

>## What about PyCall?
>
>The existing package [PyCall](https://github.com/JuliaPy/PyCall.jl) is another similar interface to Python. Here we note some key differences, but a more detailed comparison is in the documentation.
>- PythonCall supports a wider range of conversions between Julia and Python, and the conversion mechanism is extensible.
>- PythonCall by default never copies mutable objects when converting, but instead directly wraps the mutable object. This means that modifying the converted object modifies the original, and conversion is faster.
>- PythonCall does not usually automatically convert results to Julia values, but leaves them as Python objects. This makes it easier to do Pythonic things with these objects (e.g. accessing methods) and is type-stable.
>- PythonCall installs dependencies into a separate Conda environment for each Julia project. This means each Julia project can have an isolated set of Python dependencies.
>- PythonCall supports Julia 1.6.1+ and Python 3.7+ whereas PyCall supports Julia 0.7+ and Python 2.7+.

## Star History
{{star_history PyCall PythonCall}}
