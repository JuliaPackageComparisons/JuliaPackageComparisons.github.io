+++
title = "Triangulations and Tessellations"
+++

# Triangulations and Tessellations

Two common methods for partitioning space into individual elements are [_triangulations_](https://en.wikipedia.org/wiki/Point-set_triangulation) and [_tessellations_](https://en.wikipedia.org/wiki/Voronoi_diagram). This section is dedicated to packages that implement such methods.

## Short summary
DelaunayTriangulation.jl is the most supported package for Delaunay triangulations and Voronoi tessellations in two dimensions. Delaunator.jl might be faster for unconstrained triangulations if you do not need exact arithmetic. In higher dimensions, you need Delaunay.jl if $n > 3$, or TetGen.jl is great if $n=3$.

## List of packages with short descriptions
### DelaunayTriangulation.jl
{{badge DelaunayTriangulation}}
A pure Julia library for constructing planar triangulations with support for both unconstrained and constrained triangulations (including domains with holes, disjoint domains, etc.), mesh refinement, Voronoi tessellations, clipped and centroidal Voronoi tessellations, and dynamic updates. Uses exact geometric predicates and supports custom types.

### VoronoiDelaunay.jl
{{badge VoronoiDelaunay}}
A pure Julia library that constructs planar triangulations and tessellations, although no support for constrained triangulations / mesh refinement or clipped / centroid tessellations. Restricts points to $[1, 2] \times [1, 2]$.

### VoronoiCells.jl
{{badge VoronoiCells}}
A pure Julia library that extends VoronoiDelaunay.jl. This package provides useful tools for constructing and working with Voronoi tessellations. Supports clipping Voronoi cells to a specified rectangle. Like VoronoiDelaunay.jl, restricts points to $[1, 2] \times [1, 2]$.

### Delaunay.jl
{{badge Delaunay}}
Wraps Python's main Delaunay triangulation library, [`scipy.spatial.Delaunay`](https://docs.scipy.org/doc/scipy/reference/generated/scipy.spatial.Delaunay.html), for computing Delaunay triangulations in $\mathbb R^N$. I don't believe constrained triangulations or mesh refinement is available here.

### MiniQhull.jl
{{badge MiniQhull}}
Wraps [Qhull](http://www.qhull.org/) for computing unconstrained Delaunay triangulations in $\mathbb R^N$. No support is provided for mesh refinement.

### DirectQhull.jl
{{badge DirectQhull}}
Similar to MiniQhull.jl, although also provides support for convex hulls and Voronoi tessellations from Qhull.

### Delaunator.jl
{{badge Delaunator}}
A pure Julia library modelled after the [JavaScript Delaunator library](https://github.com/mapbox/delaunator). This package can construct unconstrained triangulations of planar point sets. No support is available for constrained triangulations or mesh refinement, although support exists for computing the dual Voronoi tessellation. Centroidal tessellations are not implemented, although the Voronoi cells can be clipped to a bounding box. 

### TriangleMesh.jl
{{badge TriangleMesh}}
Interfaces to [Shewchuk's Triangle library](https://www.cs.cmu.edu/~quake/triangle.html).

### Triangulate.jl
{{badge Triangulate}}
Interfaces to [Shewchuk's Triangle library](https://www.cs.cmu.edu/~quake/triangle.html).

### Triangle.jl
{{badge Triangle}}
Interfaces to [Shewchuk's Triangle library](https://www.cs.cmu.edu/~quake/triangle.html).

### TetGen.jl
{{badge TetGen}}
This is for Delaunay tetrahedralisation, wrapping [TetGen](https://wias-berlin.de/software/index.jsp?id=TetGen).

### GMT.jl
{{badge GMT}}
A wrapper of [GMT](https://github.com/GenericMappingTools/gmt), allowing for [unconstrained Delaunay triangulations in two dimensions](https://www.generic-mapping-tools.org/GMTjl_doc/documentation/modules/triangulate/index.html#triangulate), and for [spherical triangulation, i.e. triangulation of points lying on a sphere](https://www.generic-mapping-tools.org/GMTjl_doc/documentation/modules/sphtriangulate/index.html#sphtriangulate).
