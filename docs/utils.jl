# Currently, only GitHub and Codecov are supported.
@kwdef struct PkgInfo
  pkgname  # .jl is not included
  username # or organization name
  branch = "main"
  repolink = "https://github.com/$username/$pkgname.jl"
  docslink = "https://$username.github.io/$pkgname.jl"
  codecovlink = "https://codecov.io/gh/$username/$pkgname.jl"
  registered = true
end

const PKGINFOS = Dict([
  "Tullio" => PkgInfo(pkgname="Tullio", username="mcabbott", branch="master", docslink=nothing),
  "Einsum" => PkgInfo(pkgname="Einsum", username="ahwillia", branch="master", docslink=nothing, codecovlink=nothing),
  "OMEinsum" => PkgInfo(pkgname="OMEinsum", username="under-Peter", branch="master"),
  "TensorOperations" => PkgInfo(pkgname="TensorOperations", username="Jutho", branch="master"),
  "TensorCast" => PkgInfo(pkgname="TensorCast", username="mcabbott", branch="master"),
  "ArrayMeta" => PkgInfo(pkgname="ArrayMeta", username="shashi", branch="master", docslink=nothing, codecovlink=nothing, registered=false),
  # "Tortilla" => PkgInfo(pkgname="Tortilla", username="willow-ahrens"),
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
  "DelaunayTriangulation" => PkgInfo(pkgname="DelaunayTriangulation", username="DanielVandH"),
  "VoronoiDelaunay" => PkgInfo(pkgname="VoronoiDelaunay", username="JuliaGeometry", branch="master", docslink=nothing),
  "VoronoiCells" => PkgInfo(pkgname="VoronoiCells", username="JuliaGeometry", branch="master", docslink=nothing),
  "Delaunay" => PkgInfo(pkgname="Delaunay", username="eschnett", branch="master", codecovlink=nothing, docslink=nothing),
  "MiniQhull" => PkgInfo(pkgname="MiniQhull", username="gridap", branch="master", docslink=nothing),
  "DirectQhull" => PkgInfo(pkgname="DirectQhull", username="JuhaHeiskala", branch="master", codecovlink=nothing, docslink=nothing),
  "Delaunator" => PkgInfo(pkgname="Delaunator", username="JuliaGeometry", branch="master", codecovlink=nothing),
  "TriangleMesh" => PkgInfo(pkgname="TriangleMesh", username="konsim83", branch="master"),
  "Triangulate" => PkgInfo(pkgname="Triangulate", username="JuliaGeometry", branch="master"),
  "Triangle" => PkgInfo(pkgname="Triangle", username="cvdlab", branch="master", docslink=nothing),
  "TetGen" => PkgInfo(pkgname="TetGen", username="JuliaGeometry", branch="master"),
  "GMT" => PkgInfo(pkgname="GMT", username="GenericMappingTools", branch="master"),
  "PkgTemplates" => PkgInfo(pkgname="PkgTemplates", username="JuliaCI", branch="master"),
  "PkgSkeleton" => PkgInfo(pkgname="PkgSkeleton", username="tpapp", branch="master"),
  "Pkg" => PkgInfo(pkgname="Pkg", username="JuliaLang", branch="master"),
])

function hfun_badge(args)
  pkgname = args[1]
  pkginfo = PKGINFOS[pkgname]
  username = pkginfo.username
  branch = pkginfo.branch
  repolink = pkginfo.repolink
  docslink = pkginfo.docslink
  codecovlink = pkginfo.codecovlink
  registered = pkginfo.registered

  html_docs = isnothing(docslink) ? "" : """
  <a href="$docslink/stable"><img src="https://img.shields.io/badge/docs-stable-blue.svg" alt="Stable"></a>
  <a href="$docslink/dev"><img src="https://img.shields.io/badge/docs-dev-blue.svg" alt="Dev"></a>
  """
  html_codecov = isnothing(codecovlink) ? "" : """
  <a href="$codecovlink"><img src="$codecovlink/branch/$branch/graph/badge.svg" alt="Coverage"></a>
  """
  html_deps = !registered ? "" : """
  <a href="https://juliahub.com/ui/Packages/General/$pkgname?t=2"><img src="https://juliahub.com/docs/General/$pkgname/stable/deps.svg" alt="deps"></a>
  """
  html_downloads = !registered ? "" : """
  <a href="https://pkgs.genieframework.com?packages=$pkgname"><img src="https://shields.io/endpoint?url=https://pkgs.genieframework.com/api/v1/badge/$pkgname" alt="$pkgname Downloads"></a>
  """
  html_ver = !registered ? "" : """
  <a href="https://juliahub.com/ui/Packages/General/$pkgname"><img src="https://juliahub.com/docs/General/$pkgname/stable/version.svg" alt="version"></a>
  """

  return """
  <div class="badge">
  <a href="$repolink"><img src="https://img.shields.io/github/stars/$username/$pkgname.jl?style=social" alt="GitHub Repo stars"></a>
  $html_deps
  $html_downloads
  <br>
  $html_docs
  <a href="$repolink/commits/$branch/"><img src="https://img.shields.io/github/last-commit/$username/$pkgname.jl/$branch" alt="GitHub last commit (branch)"></a>
  $html_ver
  $html_codecov
  </div>
  """
end

function hfun_star_history(args)
  pkgnames = args
  pkginfos = [PKGINFOS[pkgname] for pkgname in pkgnames]
  repolinks = [pkginfo.repolink for pkginfo in pkginfos]
  repos = [chopprefix(repolink, "https://github.com/") for repolink in repolinks]
  join(repos, "&amp;")
  """
  <div class="star-history">
  <a href="https://star-history.com/#$(join(repos, "&amp;"))&amp;Date"><img src="https://api.star-history.com/svg?repos=$(join(repos, ","))&amp;type=Date" alt="Star History Chart">
  </a>
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
