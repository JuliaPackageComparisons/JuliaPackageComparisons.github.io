+++
title = "File I/O"
+++

# File I/O
<!-- @def mintoclevel=2 -->
@def maxtoclevel=3
\toc

## Introduction
This section is dedicated to all packages that read or write files on you disk. Common use cases include reading and writing data or configurations to disk.

There are many file formats, and they are good for different things. Some formats are human-readable, such as CSV files. Others are compressed well to minimize the file size, such as Parquet. Others allow efficient read/write, such as Arrow. The package [FileIO.jl](#fileiojl) aims to automatically detect the file extension, and uses many of the packages listed here automatically as appropriate. A list of all supported formats is found [here](https://juliaio.github.io/FileIO.jl/stable/registry/), and the list is rather long.

## Overview
Because most packages work for different files, they are not in direct competition, and a comparison does not make much sense. It is more appropriate to compare options that all operate on the same file type, or with the same purpose. With that said, here is a comparison of all the packages on this page:
{{ star_history FileIO ImageIO CSV Arrow Parquet MAT XLSX JSON JSON2 JSON3 JSONBase LazyJSON BSON LightBSON JSONRPC JLD2 JLD}}

## Packages
There are three types of subsections under "Packages":
1) Sections for a single package. These sections end with ".jl".
2) Sections for packages that work with a specific file format.
3) Sections for packages that serve a specific purpose. Currently only [Saving Arbitrary Julia Objects](#saving_arbitrary_julia_objects).

The table of contents at the top of the page can likely help you find what you are looking for.

### FileIO.jl
{{badge FileIO}}
A meta-package for loading all sorts of files. See the documentation for a complete list of supported file types, and details about which library is used internally. This package is actively developed, and well established in the Julia community. The only downside is that it will inherit issues/bugs from the underlying packages, meaning that it is likely not perfect. The upside is that you can use a single package with a well-defined API for any file type.

### Images
Images can be loaded with [FileIO.jl](#file-io). However, there are two other alternatives: 
1) [ImageIO.jl](#imageiojl) - See the README in the github repo for a table with supported formats.
2) Packages specific to the relevant file format. Such packages are currently not listed on this page.

#### ImageIO.jl
{{badge ImageIO}}

### Saving Arbitrary Julia Objects
If it often useful to save variables stored in your julia session, and be able to redefine them in a new julia session. For example if one of the variables is the result of a long-running computation. There several packages that are good for this specific use case. The general recommendation is **JLD2.jl**.

All options listed in this subsection support saving and loading just about anything you throw at it: Numbers, arrays, functions, even user-defined structs. This is generally done by saving a dictionary, where the keys are usually the variable name, and the values are the thing being saved:
```julia
julia> using FileIO  # FileIO uses JLD2 under the hood, given a .jld2 filename

julia> my_func(x) = x^2
my_func (generic function with 1 method)

julia> save("test.jld2", Dict(["my_func"=>my_func]))

julia> loaded_func = load("test.jld2")
Dict{String, Any} with 1 entry:
  "my_func" => my_func

julia> loaded_func["my_func"](3)  # Computes 3^2
9
```

{{star_history JLD2 JLD BSON}}

See also [FileIO.jl](#fileiojl), which can also save arbitrary julia objects by calling the listed packages internally.

#### JLD2.jl
{{badge JLD2}}
At at initial glance, the difference between JLD2 and JLD comes down to the fact that JLD2 is "without any dependency on the HDF5 C library".

#### JLD.jl
{{badge JLD}}
The original package for saving arbitrary julia objects. It seems like new users should prefer to use JLD2, and that this is mostly a legacy package.

### CSV and other delimited files
CSV stands for comma seperated values, and comma is the most common delimiter in delimited files. Other common options include tab and semicolon. All delimited files are human readable, and use plain text encoding. This can make them especially easy to write, and read directly as plain text. The main drawback is that such delimited files are not the fastest nor the smallest option for working with data.

Package that support CSV often also support other delimiters, and packages that support delimited files will automatically support a comma delimiter, and therefore CSV files.

The most starred file I/O package of all is CSV.jl. It is well established and tested, and **the generally reccomended package for reading delimited files**.

See also [FileIO.jl](#fileiojl), which can also read delimited files.

{{star_history CSV DelimitedFiles CSVFiles ChunkedCSV TableReader DLMReader ReadWriteDlm2}}

#### CSV.jl
{{badge CSV}}

#### DelimitedFiles.jl
{{badge DelimitedFiles}}
As a previous Julia standard library, this package will have a certain quality. It does one thing, and does it well, evidenced by the number of dependents.

#### CSVFiles.jl
{{badge CSVFiles}}
This is the CSV reader user by FileIO, as it is part of the queryverse organization.

#### ChunkedCSV.jl
{{badge ChunkedCSV}}
See also [TableReader.jl](#tablereaderjl), which has a `chunkbits` keyword argument and therefore may overlap.

#### TableReader.jl
{{badge TableReader}}
While this package has a very impressive [release announcement](https://discourse.julialang.org/t/ann-tablereader-jl-a-fast-and-simple-csv-parser/22335/7), the latest development was in 2019. It seems like CSV.jl has improved much since that post, and in generally preferable to this package today.

#### DLMReader.jl
{{badge DLMReader}}
> An efficient multi-threaded package for reading(writing) delimited files. It is designed as a file parser for InMemoryDatasets.jl.

#### ReadWriteDlm2.jl
{{badge ReadWriteDlm2}}
> ReadWriteDlm2 functions `readdlm2()`,` writedlm2()`, `readcsv2()` and `writecsv2()` are similar to those of [DelimitedFiles.jl](#delimitedfilesjl), but with additional support for Dates formats, Complex, Rational, Missing types and special decimal marks. ReadWriteDlm2 supports the Tables.jl interface.

### Arrow.jl
{{badge Arrow}}
    
### Parquet.jl
{{badge Parquet}}

<!-- {{badge Parquet2}} -->

### MAT.jl
{{badge MAT}}

### Excel
<!-- [FileIO.jl](#fileiojl) supports reading excel files, using [ExcelFiles.jl](https://github.com/queryverse/ExcelFiles.jl) internally.  -->

The main package for working with excel spreadsheets in julia is [XLSX.jl](#xlsxjl). The 

You might also be interested in [ClipData](https://github.com/pdeffebach/ClipData.jl) to "Copy/paste to/from Excel, Google Sheets, and other tabular data sources into interactive Julia sessions. Interactive Julia sessions include the REPL, Pluto notebooks, Jupyter notebooks, and more!".

{{star_history XLSX Taro ExcelFiles ExcelReaders}}

#### XLSX.jl
{{badge XLSX}}
Excellent package. **This is the generally recommended package for reading excel files.**

#### ExcelFiles.jl
{{badge ExcelFiles}}
ExcelFiles is used internally by [FileIO.jl](#fileiojl), as it is part of the queryverse organization. It can also be used as a standalone package. However, the last tagged version was in 2019, indicating that development is not particularly active (despite the latest commit being more recent).

#### ExcelReaders.jl
{{badge ExcelReaders}}
ExcelReaders.jl has "removed support for modern Excel files", and now only supports legacy xls files. It should therefore not be chosen over the alternatives

#### Taro.jl
{{badge Taro}}
> Taro is a utility belt of functions to work with document files in Julia. It uses Apache Tika, Apache POI and Apache FOP (via JavaCall) to work with Word, Excel and PDF files.
<!-- |Package name|Info|
|:---:|:---:|
|XLSX.jl|Excellent package. **This is the generally recommended package for reading excel files.**{{badge XLSX}}|
|ExcelReaders.jl|ExcelReaders.jl has "removed support for modern Excel files", and now only supports legacy xls files.{{badge ExcelReaders}}|
|Taro.jl|{{badge Taro}}|
XLSX.jl is an excellent package.  Therefore, **XLSX.jl is generally recommended.** -->

### JSON
**Overview:**
* Use JSON3.jl or JSON.jl for most cases.
  * JSON3.jl has faster implementation.
  * JSON.jl has long history. If you need to load JSON on old Julia versions (e.g. v1.0), JSON.jl will be suitable.
* Use BSON.jl for [Binary JSON](https://bsonspec.org/).
* Use JSONRPC.jl for [JSON-RPC 2.0](https://www.jsonrpc.org/specification).

A quote from the later linked release-announcement for JSON3.jl helps us understand why there are so many packages:
> Let’s cut right to the chase and answer the elephant questions in the proverbial discourse room: why do we need another JSON package in Julia? what does it offer distinct from what JSON.jl, JSON2.jl, or LazyJSON.jl offer? why spend time and effort developing something that’s “already solved”?
> JSON3.jl was born from the spark of three separate ideas, and a vision that they could come together to make the best, most performant, simple, yet powerful JSON integration for Julia possible. It also exists as a way to “prove out” these ideas before trying to potentially upstream improvements into a more canonically named package like JSON.jl. I fully believe the package is ready for full-time use and reliance, but similar to JSON2.jl, it exists as a way to try out a different JSON integration API to potentially make things better, faster, easier.

{{star_history JSON JSON2 JSON3 JSONBase LazyJSON BSON LightBSON JSONRPC}}

#### JSON.jl
{{badge JSON}}

#### JSON2.jl
{{badge JSON2}}

This package is not maintained.
Use JSON3.jl instead.

#### JSON3.jl
{{badge JSON3}}

From its README:

>Yet another JSON package for Julia; this one is for speed and slick struct mapping

#### JSONBase.jl
{{badge JSONBase}}

[quinnj](https://github.com/quinnj) (a founder of JSON3.jl) also provides JSONBase.jl, but its is not registered yet.

#### LazyJSON.jl
{{badge LazyJSON}}

#### BSON.jl
{{badge BSON}}
BSON is an established package. It does however seem to have some downsides, based on [this discussion](https://github.com/JuliaIO/BSON.jl/issues/122), which users should keep in mind. It may appear as if other more specific packages are better suited for any given task.

#### LightBSON.jl
{{badge LightBSON}}

#### JSONRPC.jl
{{badge JSONRPC}}

From its README:

>An implementation for JSON RPC 2.0. See the specification for details.
>
>Currently, only JSON RPC 2.0 is supported. This package can act as both a client & a server.

#### Related posts

* [Announce: A different way to read JSON data, LazyJSON.jl](https://discourse.julialang.org/t/announce-a-different-way-to-read-json-data-lazyjson-jl/9046)
* [[ANN] JSON3.jl - Yet another JSON package for Julia](https://discourse.julialang.org/t/ann-json3-jl-yet-another-json-package-for-julia/25625)
* [[ANN] JSON3.jl 1.0 Release + new StructTypes.jl Package](https://discourse.julialang.org/t/ann-json3-jl-1-0-release-new-structtypes-jl-package/34700)
* [ANN: BSON.jl, for saving your Julia data](https://discourse.julialang.org/t/ann-bson-jl-for-saving-your-julia-data/9371)
* [Should I still be using JSON.jl?](https://discourse.julialang.org/t/should-i-still-be-using-json-jl/50809)
* [So many JSON libraries; which should I use? (reddit)](https://www.reddit.com/r/Julia/comments/ni7dgk/so_many_json_libraries_which_should_i_use/)


This section could use some love. If you have used or developed Julia packages in this domain, we would love your help! Please visit the ["Contributing" section](https://github.com/JuliaPackageComparisons/JuliaPackageComparisons.github.io#contributing) of the [repository that hosts this website](https://github.com/JuliaPackageComparisons/JuliaPackageComparisons.github.io) for information on how to contribute.