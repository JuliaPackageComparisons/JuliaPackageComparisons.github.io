+++
title = "Quaternions"
+++

# Quaternions
[Quaternions](https://en.wikipedia.org/wiki/Quaternion) are best known for their suitability as representations of 3D rotational orientation.
They can also be viewed as an extension of complex numbers.

Many softwares such as [SciPy](https://docs.scipy.org/doc/scipy/reference/generated/scipy.spatial.transform.Rotation.html) and [ROS](https://wiki.ros.org/tf2/Tutorials/Quaternions), they treat the order of a quaternion as $xi+yj+zk+w$, but not $w+xi+yj+zk$.
One reason for that is that the order in [swizzling](https://en.wikipedia.org/wiki/Swizzling_(computer_graphics)) is `xyzw`.

However, most Julia packages use $w+xi+yj+zk$ order.
This is for consistency with `Base.Complex`'s $x+yi$ order.

\toc

## Packages for Quaternions

### Quaternions.jl
{{badge Quaternions}}
[Quaternions.jl](https://github.com/JuliaGeometry/Quaternions.jl) is the most popular Julia package for quaternions.

* This package implements `Quaternions.Quaternion` which is much similar to `Base.Complex`.
* This package focus on some basic operations for quaternions. Most implemented methods are added to `Base` functions.
* Other operations such as rotations are not implemented in this package. Use [Rotations.jl](https://github.com/JuliaGeometry/Rotations.jl) instead.
* The arguments for `Quaternions.Quaternion` is ordered in $w+xi+yj+zk$.

Historically, this package was not actively maintained before 2022.

### Quaternionic.jl
{{badge Quaternionic}}
[Quaternionic.jl](https://github.com/moble/Quaternionic.jl) is another Julia package for quaternions.

* This package exports `AbstractQuaternion` as well as three concrete subtypes: `Quaternion` for arbitrary quaternions, `Rotor` for quaternions with unit magnitude, and `QuatVec` for quaternions with zero scalar part (corresponding to ordinary three-vectors).  These allows specializations for faster and/or more precise results in those special cases.
* Each of the types parametrizes the type `T` of its components, as in`Quaternionic.Quaternion{T}`, but does *not* require `T <: Real`.  As a result, this package can handle [biquaternions](https://en.wikipedia.org/wiki/Biquaternion) for example.
* This package exports `imx`, `imy`, and `imz` (similar to `Base.im`), and their unicode counterparts `𝐢`, `𝐣`, and `𝐤`.
* Special care is taken to ensure that functions such as `log`, `exp`, `sqrt`, etc., are accurate and smooth near singularities and branch cuts, and to ensure that they are differentiable at those points.  In particular [`ChainRules`](https://github.com/JuliaDiff/ChainRules.jl) and [`ForwardDiff`](https://github.com/JuliaDiff/ForwardDiff.jl) are explicitly supported.
* Methods are directly included to permit transformation to and from various representations of rotations, such as Euler angles, spherical coordinates, axis-angle, and rotation-matrix representations.
* Several functions are included to find the optimal rotation to align two sets of points, or the optimal rotor to align two sets of rotors, and to measure distances between quaternions or rotors.
* This package also enables various ways of dealing with quaternion-valued functions of time, including
  * Linear interpolation, or `slerp`
  * Quadratic interpolation, or `squad`
  * Conversion to *and from* angular velocity as a function of time
  * Conversion to the "minimal-rotation" frame
* The arguments for `Quaternionic.Quaternion` is ordered in $w+xi+yj+zk$.

## Packages that define their own Quaternions

### Makie.jl
{{badge Makie}}
[Makie.jl](https://github.com/MakieOrg/Makie.jl) has its own `Quaternion` type, but this should be replaced with `Quaternions.Quaternion`.
Please check comment in [Makie.jl/src/utilities/quaternions.jl](https://github.com/MakieOrg/Makie.jl/blob/f2970dcd77bc16f311f8bb3226ef7d716395b369/src/utilities/quaternions.jl#L1-L5).
Note that `Makie.Quaternion` uses $xi+yj+zk+w$ order.

### ReferenceFrameRotations.jl
{{badge ReferenceFrameRotations}}
[ReferenceFrameRotations.jl](https://github.com/JuliaSpace/ReferenceFrameRotations.jl) also has its own `Quaternion` type.
There was an [issue#25](https://github.com/JuliaSpace/ReferenceFrameRotations.jl/issues/25) to be compatible with Quaternions.jl.

### Grassmann.jl
{{badge Grassmann}}
[Grassmann.jl](https://github.com/chakravala/Grassmann.jl) does not implement `Quaternion` as a struct, but quaternions are realized as an alias `Grassmann.Quaternion (alias for Spinor{V, T, 4} where {V, T})`.

While a quaternion is an even grade element, in `Grassmann` the exterior algebra basis of 3 independent dimensions is used to represent tensors in a combinatorial way.
There are several ways to assign `i,j,k` with `Grassmann` elements, perhaps the standard would be `i = v12`, `j = -v13`, `k = v23` (although this is not a unique choice).
Since `j` and `v13` have opposite sign in this notation, the `quatvalues` method is exported to output the coefficients with the convention `s,i,j,k` with the sign convention mentioned for convenience.
The basis elements `v12,v13,v23` are sparse and do not assign a full 4 value quaternion unless combined with algebra, which is not confined to only quaternion algebra here.

```Julia
julia> using Grassmann; basis"3"
(⟨×××⟩, v, v₁, v₂, v₃, v₁₂, v₁₃, v₂₃, v₁₂₃)

julia> s,i,j,k = v,v12,-v13,v23
(v, v₁₂, -1v₁₃, v₂₃)

julia> i*j == k
true

julia> quatvalues(s+2i+3j+4k)
4-element StaticVectors.Values{4, Int64} with indices SOneTo(4):
 1
 2
 3
 4
```

As a result of the framework of geometric algebra implemented in `Grassmann`, vector algebra and quaternion algebra are compatible in a unified formalism.
Given a quaternion operator `R` and a vector `x` the operator can be applied with either the `R>>>x` (evaluated as `R*x*conj(R)` operator) or `x⊘R` (evaluated as `conj(R)*x*R` operator) to transform vectors with quaternions.

```Julia
julia> v1 ⊘ exp(π*i/2)
-1.0v₁ + 1.2246467991473532e-16v₂ + 0.0v₃

julia> v1 ⊘ exp(π*i/4)
2.220446049250313e-16v₁ + 1.0v₂ + 0.0v₃

julia> v1 ⊘ exp(π*i/8)
0.7071067811865475v₁ + 0.7071067811865476v₂ + 0.0v₃

julia> (v1+v2+v3) ⊘ exp(π*i/8+j*π/3)
-0.1577202379738252v₁ + 1.6085211528719414v₂ - 0.6227230743251773v₃
```

A rotation matrix could be obtained from the input of `v1,v2,v3` into the operator.

## Related discourse posts
* [Taking Quaternions Seriously](https://discourse.julialang.org/t/taking-quaternions-seriously/44834)
* [[ANN] Quaternions.jl v0.7.0](https://discourse.julialang.org/t/ann-quaternions-jl-v0-7-0/91368)
* [[ANN] Grassmann.jl : Differential geometric algebra](https://discourse.julialang.org/t/ann-grassmann-jl-differential-geometric-algebra/21125)
