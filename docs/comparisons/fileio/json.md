+++
title = "JSON"
+++

# JSON

\toc

## Overview

* Use JSON3.jl or JSON.jl for most cases.
  * JSON3.jl has faster implementation.
  * JSON.jl has long history. If you need to load JSON on old Julia versions (e.g. v1.0), JSON.jl will be suitable.
* Use BSON.jl for [Binary JSON](https://bsonspec.org/).
* Use JSONRPC.jl for [JSON-RPC 2.0](https://www.jsonrpc.org/specification).

A quote from the later linked release-announcement for JSON3.jl helps us understand why there are so many packages:
> Let’s cut right to the chase and answer the elephant questions in the proverbial discourse room: why do we need another JSON package in Julia? what does it offer distinct from what JSON.jl, JSON2.jl, or LazyJSON.jl offer? why spend time and effort developing something that’s “already solved”?
> JSON3.jl was born from the spark of three separate ideas, and a vision that they could come together to make the best, most performant, simple, yet powerful JSON integration for Julia possible. It also exists as a way to “prove out” these ideas before trying to potentially upstream improvements into a more canonically named package like JSON.jl. I fully believe the package is ready for full-time use and reliance, but similar to JSON2.jl, it exists as a way to try out a different JSON integration API to potentially make things better, faster, easier.

## Packages
### JSON.jl
{{badge JSON}}

### JSON2.jl
{{badge JSON2}}

This package is not maintained.
Use JSON3.jl instead.

### JSON3.jl
{{badge JSON3}}

From its README:

>Yet another JSON package for Julia; this one is for speed and slick struct mapping

### JSONBase.jl
{{badge JSONBase}}

[quinnj](https://github.com/quinnj) (a founder of JSON3.jl) also provides JSONBase.jl, but its is not registered yet.

### LazyJSON.jl
{{badge LazyJSON}}

### BSON.jl
{{badge BSON}}

### JSONRPC.jl
{{badge JSONRPC}}

From its README:

>An implementation for JSON RPC 2.0. See the specification for details.
>
>Currently, only JSON RPC 2.0 is supported. This package can act as both a client & a server.

## Related posts

* [Announce: A different way to read JSON data, LazyJSON.jl](https://discourse.julialang.org/t/announce-a-different-way-to-read-json-data-lazyjson-jl/9046)
* [[ANN] JSON3.jl - Yet another JSON package for Julia](https://discourse.julialang.org/t/ann-json3-jl-yet-another-json-package-for-julia/25625)
* [[ANN] JSON3.jl 1.0 Release + new StructTypes.jl Package](https://discourse.julialang.org/t/ann-json3-jl-1-0-release-new-structtypes-jl-package/34700)
* [ANN: BSON.jl, for saving your Julia data](https://discourse.julialang.org/t/ann-bson-jl-for-saving-your-julia-data/9371)
* [Should I still be using JSON.jl?](https://discourse.julialang.org/t/should-i-still-be-using-json-jl/50809)
* [So many JSON libraries; which should I use? (reddit)](https://www.reddit.com/r/Julia/comments/ni7dgk/so_many_json_libraries_which_should_i_use/)

## Star History
{{star_history JSON JSON2 JSON3 JSONBase LazyJSON BSON JSONRPC}}
