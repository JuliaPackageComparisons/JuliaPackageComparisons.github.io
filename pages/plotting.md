# Plotting
This section is not yet well written. See [this](https://github.com/JuliaPackageComparisons/JuliaPackageComparisons.github.io/issues/25) issue for thoughts on reworking this section.

Julia has a large number of available plotting libraries. They differ in a number of way, but the most important difference relate to native Julia vs wrapper, speed, interactivity, output file formats, animations, and more. There are so many packages that it will not make sense to compare each package to each other package, so this section mainly focuses on providing a description of each package.

\toc

## Summary
Plots.jl was for a long time the most used package for a reason. It's very flexible, integrates with the most Julia packages so you'll find it all throughout other docs, and it has many of the advantages of the other libraries through its backend system. Thus if you needed Latex output, use the pgfplots backend. If you needed a webpage, use the Plotly backend. Unicodeplots backend when you want text output. Or the GR default for the basics. With Julia v1.9 its startup time is much improved (and it's like sub second on v1.10 beta), which was its major complaint before. If you're going to use one plotting library and don't care too much about every little detail, then Plots.jl is a good one to go with. It's definitely not the best in any of the cases, animations are better in Makie, Latex is better in PGFPlotsX, etc., but it's capable everywhere.

Makie.jl has surpassed Plots.jl in the number of stars on github, and the two are competing as the main general-purpose plotting packaged. It scales well and its getting all of the niceties of Plots.jl. I wouldn't learn it first if you're new to Julia (right now, though that will likely change by 2024). But if you need animations or want to add custom buttons to a window (make a quick GUI-like thing), Makie is unmatched. If it makes its standard plotting interface a bit simpler, gets a few more integrations, and thus matches Plots.jl in simplicity, it may hit a "best of most worlds" soon.

Otherwise it's a bit domain specific. If you were using Plots.jl and needed more flexibility for publication-quality plots, PGFPlotsX.jl can help. Or if you prefer grammar of graphics, AlgebraOfGraphics.jl is good. If you're a stats person you may find Gadfly or VegaLite familiar, though I wouldn't recommend them first because these don't satisfy general user needs (try making a plot of an FEM output and see what I mean).

All of these are pretty good. You have a lot of options. In the end, pick the one that suits your needs best.

## Description of Each Package
### Plots.jl
{{badge Plots}}
[Plots.jl](https://docs.juliaplots.org/) is the most used. It's probably the most documented, used in the most tutorials, and is used in many videos. 
* Pros: Its main draw is that it has a lot of plugins to other packages through its recipes system, which means that a lot of odd things like `plot(sol::ODESolution)` or showing the sparsity of a `BandedMatrix` just works. With all of these integrations, it's normally what I would recommend first to newcomers since they will generally get the most done with the least work. It has a backend system, so you can make it generate plots via GR (the default), Plotly (i.e. make webpages), pyplot, PGFPlots (Latex output), UnicodePlots (i.e. output plots as text). This ease of use and flexibility is what its main draw is.
* Cons: Its downside has traditionally been its startup time, though it's nearly a second now so that's fine. Its main downside now is mostly that it's not as configurable as something like Makie, and it's not as optimized if you get up to millions of points. Its flexibility means it's not just for standard plots but also for animations, building small graphical user interfaces, and building small apps. 

### Makie.jl
{{badge Makie}}
[Makie.jl](https://docs.makie.org/stable/) is probably the second most popular. It's natively Julia so it's cool in that aspect, you can see code all the way down. 
* Pros: It's very optimized for large plots, especially with GPU acceleration via the OpenGL backend (GLMakie). It has a lot of examples these days. 
* Cons: Its downside is that it's a bit less "first user friendly", given that its flexibility means there's a lot more options. It has a recipe system now but it's fairly new and not well-integrated with most of the ecosystem, so it's not as seamless as Plots, though by 2024 I would assume that would largely be fixed. It has the longest startup time, used to be in minutes but now it's like 5-10 seconds. 

### AlgebraOfGraphics.jl
{{badge AlgebraOfGraphics}}
[AlgebraOfGraphics.jl](https://aog.makie.org/stable/) is a grammar of graphics front-end to Makie. This essentially means it has an API that looks and acts like R's ggplot2. Thus it has largely the same pros and cons as Makie, since it's just calling Makie under the hood, but with the pro of being more familiar to users coming from R.

### Gadfly.jl
{{badge Gadfly}}
[Gadfly.jl](http://gadflyjl.org/stable/) is a grammar of graphics based library.
* Pros: It's very familiar to a ggplot2 user. Its default theme is pretty nice looking.
* Cons: It's a bit high on startup time, closer to Makie than Plots. Also, it's pretty feature poor. In particular, it is missing 3D plots, animations, the ability to make interactive apps with buttons, etc. For these reasons more and more people are adopting AlgebraOfGraphics, but if you're just doing some standard statistics it's fine.

### Vega.jl
{{badge Vega}}
[Vega.jl](https://www.queryverse.org/Vega.jl/stable) and [VegaLite](https://www.queryverse.org/VegaLite.jl/stable/) are of the same camp as Gadfly in the focus towards "standard" statistics and data science, but using wrappers to Javascript libraries. 
* Pro: Fast startups 
* Cons Similar to Gadfly, little to no flexibility (making apps, animations, ...) and integration with Julia libraries beyond Queryverse.

### Deneb.jl
{{badge Deneb}}
[Deneb.jl](https://github.com/brucala/Deneb.jl) is another Julia alternative to build [Vega-Lite](https://vega.github.io/vega-lite/) plots. It provides an elegant julian API for creating Vega-Lite visualizations with high inspiration from Python's [Altair](https://altair-viz.github.io/).
* Pros: Deneb.jl gives access to Vega-Lite's high-level grammar of interactive graphics. It can produce beautiful plots with high levels of interactivity using a concise, declarative syntax. See the [gallery](https://brucala.github.io/Deneb.jl/dev/examples/#Interactive) for a showcase of compelling interactive plots.
* Cons: Limited to what Vega-Lite can achieve, for instance there is no support yet for 3D plotting. It might face challenges with larger datasets, since it doesn't produce plots consisting of pixels, but rather plots consisting of data along with a specification. For scalability with larger datasets, [VegaFusion](https://vegafusion.io/) provides a solution, but Deneb.jl has yet to leverage this potential.

### PlotlyLight.jl
{{badge PlotlyLight}}
[PlotlyLight.jl](https://github.com/JuliaComputing/PlotlyLight.jl) is a no-frills wrapper to Plotly. 
* Pro: No startup time
* Cons: Requires reading the Plotly docs to know how to use it and has little flexibility or integration into Julia libraries.

### GR.jl
{{badge GR}}
[GR.jl](https://github.com/jheinen/GR.jl) is a front end to a C library GR. It's actually used as the default front-end from Plots.jl. Many more people use it from Plots.jl than directly due to the integrations and docs, but it is nice for some things on its own.
* Pros: It's fast, scales fairly well, has a fast startup time, has a nice GUI for investigating results, integrates well with ITerm, very flexible.
* Cons: It's docs are bit difficult, and it doesn't have any integrations with Julia libraries. 

### PGFPlotsX.jl
{{badge PGFPlotsX}}
[PGFPlotsX.jl](https://kristofferc.github.io/PGFPlotsX.jl/stable/) is a front-end to generate plots for Latex.
* Pros: Fast startup, output to Latex which makes it easy to then further modify in publication documents.
* Cons: Its interface is wonky, even if you are familiar with the pgfplots Latex package. This makes quite hard to use and teach. Very few integrations with Julia libraries (Measurements and Colors only?). Lacking flexibility in terms of animations and making apps, though it's quite flexible in its ability to modify the plots and make weird things.

### UnicodePlots.jl
{{badge UnicodePlots}}
[UnicodePlots.jl](https://github.com/JuliaPlots/UnicodePlots.jl) is very simple, fast startup, and plots to text. Its downside of course is that text is the only output it has.

### Gaston.jl
{{badge Gaston}}
[Gaston.jl](https://mbaz.github.io/Gaston.jl/v0.10.0/) a front-end to gnuplot.
* Fast startup.
* Pretty basic, lacking flexibility and integrations with Julia packages. Requires gnuplot so limitations on where it can be installed.

### GMT.jl
{{badge GMT}}
[GMT.jl](https://github.com/GenericMappingTools/GMT.jl) is "generic mapping tools". It has some plotting tools [highlighted here](https://www.generic-mapping-tools.org/GMTjl_doc/examples/plotting_functions/).
* Pros: Has good examples in the docs. Nice extra tools for maps.
* Cons: Missing some standard plot types, limited integrations with other Julia packages.

### GnuPlot.jl
{{badge Gnuplot}}
[GnuPlot.jl](https://github.com/gcalderone/GnuPlot.jl) uses gnuplot under the hood.
* Pros: Instant startup, has some interesting data science integrations for things like named datasets, very complete set of plots
* Cons: Not the most complete documentation, requires Linux with gnuplot.
