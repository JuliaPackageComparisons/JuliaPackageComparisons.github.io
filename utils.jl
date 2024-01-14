# Currently, only GitHub and Codecov are supported.
@kwdef struct PkgInfo
  pkgname  # .jl is not included
  username # or organization name
  branch = "main"
  repolink = "https://github.com/$username/$pkgname.jl"
  docslink = "https://$username.github.io/$pkgname.jl"
  codecovlink = "https://codecov.io/gh/$username/$pkgname.jl"
end

const PKGINFOS = Dict([
  "Tullio" => PkgInfo(pkgname="Tullio", username="mcabbott", branch="master", docslink=nothing),
  "Einsum" => PkgInfo(pkgname="Einsum", username="ahwillia", branch="master", docslink=nothing, codecovlink=nothing),
  "OMEinsum" => PkgInfo(pkgname="OMEinsum", username="under-Peter", branch="master"),
  "Chain" => PkgInfo(pkgname="Chain", username="jkrumbiegel", branch="master", docslink=nothing, codecovlink=nothing),
  "Lazy" => PkgInfo(pkgname="Lazy", username="MikeInnes", branch="master", docslink=nothing, codecovlink=nothing),
  "Pipe" => PkgInfo(pkgname="Pipe", username="oxinabox", branch="master", docslink=nothing, codecovlink=nothing),
  "Unitful" => PkgInfo(pkgname="Unitful", username="PainterQubits", branch="master"),
  "DynamicQuantities" => PkgInfo(pkgname="DynamicQuantities", username="SymbolicML", codecovlink=nothing),
  "UnitSystems" => PkgInfo(pkgname="UnitSystems", username="chakravala", branch="master", docslink=nothing),
  "Genie" => PkgInfo(pkgname="Genie", username="GenieFramework", branch="master", codecovlink=nothing),
  "Oxygen" => PkgInfo(pkgname="Oxygen", username="ndortega", branch="master"),
  "Bonito" => PkgInfo(pkgname="Bonito", username="SimonDanisch", branch="master"),
  "Plots" => PkgInfo(pkgname="Plots", username="JuliaPlots", branch="master", docslink="https://docs.juliaplots.org/", codecovlink=nothing),
  "Makie" => PkgInfo(pkgname="Makie", username="MakieOrg", branch="master", docslink="https://docs.makie.org/", codecovlink=nothing),
  "AlgebraOfGraphics" => PkgInfo(pkgname="AlgebraOfGraphics", username="MakieOrg", branch="master", codecovlink=nothing),
  "Gadfly" => PkgInfo(pkgname="Gadfly", username="GiovineItalia", branch="master", codecovlink=nothing),
  "Vega" => PkgInfo(pkgname="Vega", username="johnmyleswhite", branch="master", docslink=nothing, codecovlink=nothing),
  "Deneb" => PkgInfo(pkgname="Deneb", username="brucala"),
  "PlotlyLight" => PkgInfo(pkgname="PlotlyLight", username="JuliaComputing", branch="master", docslink=nothing),
  "GR" => PkgInfo(pkgname="GR", username="jheinen", branch="master", docslink=nothing),
  "PGFPlotsX" => PkgInfo(pkgname="PGFPlotsX", username="kristofferc", branch="master"),
  "UnicodePlots" => PkgInfo(pkgname="UnicodePlots", username="JuliaPlots", docslink=nothing),
  "Gaston" => PkgInfo(pkgname="Gaston", username="mbaz", branch="master", codecovlink=nothing),
  "GMT" => PkgInfo(pkgname="GMT", username="GenericMappingTools", branch="master"),
  "Gnuplot" => PkgInfo(pkgname="GnuPlot", username="gcalderone", branch="master"),
  "ControlSystems" => PkgInfo(pkgname="ControlSystems", username="JuliaControl", branch="master"),
  "ModelPredictiveControl" => PkgInfo(pkgname="ModelPredictiveControl", username="franckgaga"),
  "BSplines" => PkgInfo(pkgname="BSplines", username="sostock", branch="master"),
  "BSplineKit" => PkgInfo(pkgname="BSplineKit", username="jipolanco", branch="master"),
  "BasicBSpline" => PkgInfo(pkgname="BasicBSpline", username="hyrodium"),
  "NURBS" => PkgInfo(pkgname="NURBS", username="HoBeZwe"),
  "Agents" => PkgInfo(pkgname="Agents", username="JuliaDynamics"),
  "Vahana" => PkgInfo(pkgname="Vahana", username="s-fuerst", codecovlink=nothing),
  # "MEDYAN" => PkgInfo(pkgname="MEDYAN", username="medyan-dev"),
  "CellBasedModels" => PkgInfo(pkgname="CellBasedModels", username="dsb-lab", branch="master", codecovlink=nothing),
  "EasyABM" => PkgInfo(pkgname="EasyABM", username="RenuSolanki"),
  "Quaternions" => PkgInfo(pkgname="Quaternions", username="JuliaGeometry"),
  "Quaternionic" => PkgInfo(pkgname="Quaternionic", username="moble"),
  "ReferenceFrameRotations" => PkgInfo(pkgname="ReferenceFrameRotations", username="JuliaSpace", branch="master"),
  "Grassmann" => PkgInfo(pkgname="Grassmann", username="chakravala", branch="master"),
])

function hfun_badge(args)
  pkgname = args[1]
  pkginfo = PKGINFOS[pkgname]
  username = pkginfo.username
  branch = pkginfo.branch
  repolink = pkginfo.repolink
  docslink = pkginfo.docslink
  codecovlink = pkginfo.codecovlink

  html_docs = isnothing(docslink) ? "" : """
  <a href="$docslink/stable"><img src="https://img.shields.io/badge/docs-stable-blue.svg" alt="Stable"></a>
  <a href="$docslink/dev"><img src="https://img.shields.io/badge/docs-dev-blue.svg" alt="Dev"></a>
  """
  html_codecov = isnothing(codecovlink) ? "" : """
  <a href="$codecovlink"><img src="$codecovlink/branch/$branch/graph/badge.svg" alt="Coverage"></a>
  """

  return """
  <div class="badge">
  <a href="$repolink"><img src="https://img.shields.io/github/stars/$username/$pkgname.jl?style=social" alt="GitHub Repo stars"></a>
  <a href="https://juliahub.com/ui/Packages/General/$pkgname?t=2"><img src="https://juliahub.com/docs/General/$pkgname/stable/deps.svg" alt="deps"></a>
  <a href="https://pkgs.genieframework.com?packages=$pkgname"><img src="https://shields.io/endpoint?url=https://pkgs.genieframework.com/api/v1/badge/$pkgname" alt="$pkgname Downloads"></a>
  <br>
  $html_docs
  <a href="$repolink/commits/$branch/"><img src="https://img.shields.io/github/last-commit/$username/$pkgname.jl/$branch" alt="GitHub last commit (branch)"></a>
  <a href="https://juliahub.com/ui/Packages/General/$pkgname"><img src="https://juliahub.com/docs/General/$pkgname/stable/version.svg" alt="version"></a>
  $html_codecov
  </div>
  """
end

function hfun_bar(vname)
  val = Meta.parse(vname[1])
  return round(sqrt(val), digits=2)
end

function hfun_m1fill(vname)
  var = vname[1]
  return pagevar("index", var)
end

function lx_baz(com, _)
  # keep this first line
  brace_content = Franklin.content(com.braces[1]) # input string
  # do whatever you want here
  return uppercase(brace_content)
end
