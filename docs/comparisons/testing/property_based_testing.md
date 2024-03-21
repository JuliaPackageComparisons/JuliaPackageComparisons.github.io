+++
title = "Property Based Testing"
+++

# Property Based Testing
\toc

## Introduction
Programming and mathematics have always interested similar minds, and tackled related problems. Mathematics has strong formalism in place about the properties of certain objects (scalars, vectors, matrices) under certain operations (addition, multiplication, transposition), or even properties of the operators themselves. Property Based Testing (PBT) is an attempt to use computer programming to test if certain properties hold for certain objects.

## Overview
There are two main packages in this domain: [PropCheck.jl](#propcheckjl), and the newer [Suppositon.jl](#suppositionjl). Both packages are created by the same person, who has made a comparison page of the two packages in the [FAQ of the Supposition.jl docs](https://seelengrab.github.io/Supposition.jl/stable/faq.html). That page includes [this table](https://seelengrab.github.io/Supposition.jl/stable/faq.html#What-feature-X-of-PropCheck.jl-corresponds-to-feature-Y-of-Supposition.jl?) which shows some things that PropCheck can do that Supposition can't, and [this list](https://seelengrab.github.io/Supposition.jl/stable/faq.html#What-can-Supposition.jl-do-that-PropCheck.jl-can't?) of things that Supposition can do that PropCheck can't. The general takeaway is that PropCheck is in maintenance mode, and that Supposition should be considered a successor to PropCheck. New users should generally use Supposition.

Supposition.jl is heavily inspired by the python library [Hypothesis](https://hypothesis.readthedocs.io/en/latest/), whereas PropCheck.jl is inspired by the Haskell library Hedgehog. For those interested in the differences beyond the surface level, the package author recommends [this comparison blogpost between QuickCheck, Hedgehog and Hypothesis](https://seelengrab.github.io/articles/The%20properties%20of%20QuickCheck,%20Hedgehog%20and%20Hypothesis/) as a starting point.

{{star_history PropCheck Supposition JCheck}}
## Packages

### PropCheck.jl
{{badge PropCheck}}
PropCheck is the original package for Property Based Testing, and is therefore more mature and battle-tested. However, it is in maintenance mode, as the package developer has moved on to Supposition as a successor to PropCheck.

### Supposition.jl
{{badge Supposition}}
Supposition.jl is very new, and has not yet proven itself. However, as the maker of the package has also created the battle-tested PropCheck, experience from that project has without a doubt gone into making Supposition, meaning that it is likely more stable and well-though out than the package age suggests. 

### JCheck.jl
{{badge JCheck}}
This package is mentioned for completeness. It appears to be a functional package and thereby a valid alternative, but it no longer appears maintained. Given the age, starts and activity of [PropCheck](#propcheckjl), and that it's developer also made [Supposition.jl](#suppositionjl), it seems likely that this package is overall worse for most users.

## Related Posts
- [Supposition.jl release announcement](https://discourse.julialang.org/t/ann-supposition-jl/111338).
