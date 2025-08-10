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

const PKGINFOS = [
    PkgInfo(pkgname="Tullio", username="mcabbott", branch="master", docslink=nothing),
    PkgInfo(pkgname="Einsum", username="ahwillia", branch="master", docslink=nothing, codecovlink=nothing),
    PkgInfo(pkgname="OMEinsum", username="under-Peter", branch="master"),
    PkgInfo(pkgname="TensorOperations", username="Jutho", branch="master"),
    PkgInfo(pkgname="TensorCast", username="mcabbott", branch="master"),
    PkgInfo(pkgname="ArrayMeta", username="shashi", branch="master", docslink=nothing, codecovlink=nothing, registered=false),
    PkgInfo(pkgname="Tensorial", username="KeitaNakamura", branch="main"),
    # PkgInfo(pkgname="Tortilla", username="willow-ahrens"),
    PkgInfo(pkgname="Chain", username="jkrumbiegel", branch="master", docslink=nothing, codecovlink=nothing),
    PkgInfo(pkgname="Lazy", username="MikeInnes", branch="master", docslink=nothing, codecovlink=nothing),
    PkgInfo(pkgname="Pipe", username="oxinabox", branch="master", docslink=nothing, codecovlink=nothing),
    PkgInfo(pkgname="Unitful", username="JuliaPhysics", branch="master"),
    PkgInfo(pkgname="DynamicQuantities", username="SymbolicML", codecovlink=nothing),
    PkgInfo(pkgname="UnitSystems", username="chakravala", branch="master", docslink=nothing),
    PkgInfo(pkgname="Genie", username="GenieFramework", branch="master", codecovlink=nothing, docslink="https://GenieFramework.github.io/Genie.jl/dev/"),
    PkgInfo(pkgname="Oxygen", username="OxygenFramework", branch="master"),
    PkgInfo(pkgname="Bonito", username="SimonDanisch", branch="master", docslink="https://SimonDanisch.github.io/Bonito.jl/stable/"),
    PkgInfo(pkgname="Mongoose", username="AbrJA", branch="main", docslink="https://abrja.github.io/Mongoose.jl/dev/"),
    PkgInfo(pkgname="Plots", username="JuliaPlots", branch="master", docslink="https://docs.juliaplots.org/", codecovlink=nothing),
    PkgInfo(pkgname="Makie", username="MakieOrg", branch="master", docslink="https://docs.makie.org/", codecovlink=nothing),
    PkgInfo(pkgname="AlgebraOfGraphics", username="MakieOrg", branch="master", codecovlink=nothing),
    PkgInfo(pkgname="Gadfly", username="GiovineItalia", branch="master", codecovlink=nothing),
    PkgInfo(pkgname="Vega", username="johnmyleswhite", branch="master", docslink=nothing, codecovlink=nothing),
    PkgInfo(pkgname="Deneb", username="brucala"),
    PkgInfo(pkgname="PlotlyLight", username="JuliaComputing", branch="master", docslink=nothing),
    PkgInfo(pkgname="GR", username="jheinen", branch="master", docslink=nothing),
    PkgInfo(pkgname="PGFPlotsX", username="kristofferc", branch="master"),
    PkgInfo(pkgname="UnicodePlots", username="JuliaPlots", docslink=nothing),
    PkgInfo(pkgname="Gaston", username="mbaz", branch="master", codecovlink=nothing),
    PkgInfo(pkgname="GMT", username="GenericMappingTools", branch="master"),
    PkgInfo(pkgname="Gnuplot", username="gcalderone", branch="master"),
    PkgInfo(pkgname="ControlSystems", username="JuliaControl", branch="master"),
    PkgInfo(pkgname="ModelPredictiveControl", username="franckgaga"),
    PkgInfo(pkgname="BSplines", username="sostock", branch="master"),
    PkgInfo(pkgname="BSplineKit", username="jipolanco", branch="master"),
    PkgInfo(pkgname="BasicBSpline", username="hyrodium"),
    PkgInfo(pkgname="NURBS", username="HoBeZwe"),
    PkgInfo(pkgname="Agents", username="JuliaDynamics"),
    PkgInfo(pkgname="Vahana", username="s-fuerst", codecovlink=nothing),
    # PkgInfo(pkgname="MEDYAN", username="medyan-dev"),
    PkgInfo(pkgname="CellBasedModels", username="dsb-lab", branch="master", codecovlink=nothing),
    PkgInfo(pkgname="EasyABM", username="RenuSolanki"),
    PkgInfo(pkgname="MixedStructTypes", username="JuliaDynamics"),
    PkgInfo(pkgname="SumTypes", username="MasonProtter", branch="master"),
    PkgInfo(pkgname="Unityper", username="YingboMa", branch="master"),
    PkgInfo(pkgname="Expronicon", username="Roger-luo"),
    PkgInfo(pkgname="Quaternions", username="JuliaGeometry"),
    PkgInfo(pkgname="Quaternionic", username="moble"),
    PkgInfo(pkgname="ReferenceFrameRotations", username="JuliaSpace", branch="master"),
    PkgInfo(pkgname="Grassmann", username="chakravala", branch="master"),
    PkgInfo(pkgname="DelaunayTriangulation", username="DanielVandH"),
    PkgInfo(pkgname="VoronoiDelaunay", username="JuliaGeometry", branch="master", docslink=nothing),
    PkgInfo(pkgname="VoronoiCells", username="JuliaGeometry", branch="master", docslink=nothing),
    PkgInfo(pkgname="Delaunay", username="eschnett", branch="master", codecovlink=nothing, docslink=nothing),
    PkgInfo(pkgname="MiniQhull", username="gridap", branch="master", docslink=nothing),
    PkgInfo(pkgname="DirectQhull", username="JuhaHeiskala", branch="master", codecovlink=nothing, docslink=nothing),
    PkgInfo(pkgname="Delaunator", username="JuliaGeometry", branch="master", codecovlink=nothing),
    PkgInfo(pkgname="TriangleMesh", username="konsim83", branch="master"),
    PkgInfo(pkgname="Triangulate", username="JuliaGeometry", branch="master"),
    PkgInfo(pkgname="Triangle", username="cvdlab", branch="master", docslink=nothing),
    PkgInfo(pkgname="TetGen", username="JuliaGeometry", branch="master"),
    PkgInfo(pkgname="GMT", username="GenericMappingTools", branch="master"),
    PkgInfo(pkgname="PkgTemplates", username="JuliaCI", branch="master"),
    PkgInfo(pkgname="PkgSkeleton", username="tpapp", branch="master", docslink=nothing),
    PkgInfo(pkgname="Pkg", username="JuliaLang", branch="master"),
    PkgInfo(pkgname="PyCall", username="JuliaPy", branch="master"),
    PkgInfo(pkgname="PythonCall", username="JuliaPy"),
    PkgInfo(pkgname="JSON", username="JuliaIO", branch="master", docslink=nothing),
    PkgInfo(pkgname="JSON2", username="quinnj", branch="master", docslink=nothing),
    PkgInfo(pkgname="JSON3", username="quinnj"),
    PkgInfo(pkgname="JSONBase", username="quinnj", registered=false, docslink=nothing),
    PkgInfo(pkgname="LazyJSON", username="JuliaCloud", branch="master", docslink=nothing),
    PkgInfo(pkgname="BSON", username="JuliaIO", branch="master", docslink=nothing),
    PkgInfo(pkgname="JSONRPC", username="julia-vscode", branch="master", docslink=nothing),
    PkgInfo(pkgname="PropCheck", username="Seelengrab"),
    PkgInfo(pkgname="Supposition", username="Seelengrab"),
    PkgInfo(pkgname="JCheck", username="ps-pat"),
    PkgInfo(pkgname="ProfileView", username="timholy", branch="master"),
    PkgInfo(pkgname="ProfileVega", username="davidanthoff", branch="master"),
    PkgInfo(pkgname="StatProfilerHTML", username="tkluck", branch="master"),
    PkgInfo(pkgname="ProfileSVG", username="kimikage", branch="master"),
    PkgInfo(pkgname="PProf", username="JuliaPerf"),
    PkgInfo(pkgname="ProfileCanvas", username="pfitzseb"),
    PkgInfo(pkgname="BenchmarkTools", username="JuliaCI", branch="master"),
    PkgInfo(pkgname="Chairmarks", username="LilithHafner"),
    PkgInfo(pkgname="PkgBenchmark", username="JuliaCI", branch="master"),
    PkgInfo(pkgname="BenchmarkCI", username="tkf", branch="master"),
    PkgInfo(pkgname="AirspeedVelocity", username="MilesCranmer", branch="master"),
    PkgInfo(pkgname="PkgJogger", username="awadell1"),
    PkgInfo(pkgname="FactCheck", username="JuliaAttic", branch="master", docslink=nothing),
    PkgInfo(pkgname="Spec", username="zenna", branch="master"),
    PkgInfo(pkgname="TestTools", username="velexi-research"),
    PkgInfo(pkgname="IntervalSets", username="JuliaMath", branch="master"),
    PkgInfo(pkgname="Intervals", username="invenia", branch="master"),
    PkgInfo(pkgname="IntervalArithmetic", username="JuliaIntervals", branch="master"),
    PkgInfo(pkgname="Franklin", username="tlienart", branch="master", docslink="https://franklinjl.org/"),
    PkgInfo(pkgname="StaticWebPages", username="Humans-of-Julia", branch="master", docslink="https://humans-of-julia.github.io/StaticWebPages.jl/dev/"),
    PkgInfo(pkgname="DataFrames", username="JuliaData"),
    PkgInfo(pkgname="InMemoryDatasets", username="sl-solution", branch="master"),
    PkgInfo(pkgname="JuliaDB", username="JuliaData"),
    PkgInfo(pkgname="Tidier", username="TidierOrg"),
    PkgInfo(pkgname="DTables", username="JuliaParallel"),
    PkgInfo(pkgname="WaterLily", username="weymouth", branch="master"),
    PkgInfo(pkgname="Oceananigans", username="CliMA", branch="main"),
    PkgInfo(pkgname="Clang", username="JuliaInterop", branch="master"),
    PkgInfo(pkgname="CBinding", username="analytech-solutions", branch="master"),
    PkgInfo(pkgname="Cxx", username="JuliaInterop", branch="master"),
    PkgInfo(pkgname="CxxWrap", username="JuliaInterop", docslink=nothing),
    PkgInfo(pkgname="PerfChecker", username="JuliaConstraints", docslink=nothing),
    PkgInfo(pkgname="NIDAQ", username="JaneliaSciComp", branch="master", docslink=nothing),
    PkgInfo(pkgname="LabJack", username="wsphillips", branch="master", docslink=nothing),
    PkgInfo(pkgname="RedPitayaDAQServer", username="tknopp", branch="master", repolink="https://github.com/tknopp/RedPitayaDAQServer"),
    PkgInfo(pkgname="DashDaq", username="plotly", branch="master", docslink=nothing),
    PkgInfo(pkgname="PiGPIO", username="JuliaBerry", branch="master"),
    PkgInfo(pkgname="BaremetalPi", username="ronisbr", branch="master", docslink=nothing),
    PkgInfo(pkgname="CSV", username="JuliaData"),
    PkgInfo(pkgname="XLSX", username="felipenoris", branch="master"),
    PkgInfo(pkgname="Arrow", username="apache", repolink="https://github.com/apache/arrow-julia", docslink="https://arrow.apache.org/julia/"),
    # PkgInfo(pkgname="Parquet2", username="ExpandingMan"),  # GitLab hosted!
    PkgInfo(pkgname="Parquet", username="JuliaIO", branch="master"),
    PkgInfo(pkgname="MAT", username="JuliaIO", branch="master"),
    PkgInfo(pkgname="Taro", username="aviks", branch="master"),
    PkgInfo(pkgname="FileIO", username="JuliaIO", branch="master", docslink="https://juliaio.github.io/FileIO.jl/"),
    PkgInfo(pkgname="ImageIO", username="JuliaIO", branch="master", docslink=nothing),
    PkgInfo(pkgname="ExcelReaders", username="queryverse", branch="master", docslink=nothing),
    PkgInfo(pkgname="ExcelFiles", username="queryverse", branch="master", docslink=nothing),
    PkgInfo(pkgname="JLD", username="JuliaIO", branch="master", docslink=nothing),
    PkgInfo(pkgname="JLD2", username="JuliaIO", branch="master", docslink=nothing),
    PkgInfo(pkgname="LightBSON", username="ancapdev", branch="master", docslink=nothing),
    PkgInfo(pkgname="DelimitedFiles", username="JuliaData", docslink="http://delimitedfiles.juliadata.org/dev/"),
    PkgInfo(pkgname="CSVFiles", username="queryverse", branch="master", docslink=nothing),
    PkgInfo(pkgname="ChunkedCSV", username="RelationalAI", docslink=nothing),
    PkgInfo(pkgname="TableReader", username="bicycle1885", branch="master"),
    PkgInfo(pkgname="DLMReader", username="sl-solution"),
    PkgInfo(pkgname="ReadWriteDlm2", username="strickek", docslink=nothing),
    PkgInfo(pkgname="uCSV", username="cjprybol", branch="master", ),
    PkgInfo(pkgname="JLSO", username="invenia", branch="master", ),
    PkgInfo(pkgname="JDF", username="xiaodaigh", docslink=nothing),
    PkgInfo(pkgname="Serde", username="bhftbootcamp", branch="master"),
    # PkgInfo(pkgname="LopShelve", username="machkouroke", docslink="https://lopuniverse.me/LopShelve.jl/"),
    PkgInfo(pkgname="PeriodicTable", username="JuliaPhysics", branch="master", docslink=nothing),
    PkgInfo(pkgname="PhysicalConstants", username="JuliaPhysics", branch="master"),
    PkgInfo(pkgname="Mendeleev", username="Eben60", branch="main", docslink="https://eben60.github.io/Mendeleev.jl"),
    PkgInfo(pkgname="IsotopeTable", username="Gregstrq", branch="main", docslink=nothing),
    PkgInfo(pkgname="BestieTemplate", username="JuliaBesties", branch="main"),
    PkgInfo(pkgname="PackageMaker", username="Eben60", branch="main", docslink="https://eben60.github.io/PackageMaker.jl/"),
    PkgInfo(pkgname="IJulia", username="JuliaLang", branch="master"),
    PkgInfo(pkgname="Pluto", username="fonsp", branch="main", docslink="https://plutojl.org/"),
    PkgInfo(pkgname="Neptune", username="compleathorseplayer", branch="master", docslink=nothing),
    PkgInfo(pkgname="BonitoBook", username="SimonDanisch", branch="main", docslink="https://bonitobook.org/website/"),
]

function get_pkginfo(pkgname)
  index = findfirst(pkginfo -> pkginfo.pkgname==pkgname, PKGINFOS)
  isnothing(index) && error("Cannot find $pkgname")
  PKGINFOS[index]
end

function hfun_badge(args)
  pkgname = args[1]
  pkginfo = get_pkginfo(pkgname)
  username = pkginfo.username
  branch = pkginfo.branch
  repolink = pkginfo.repolink
  docslink = pkginfo.docslink
  codecovlink = pkginfo.codecovlink
  registered = pkginfo.registered

  docreg = r".*/([^/]+)/$"
  isnothing(docslink) || (docmatch = match(docreg, docslink))
  html_docs = isnothing(docslink) ? "" :
      isnothing(docmatch) ? """
      <a href="$docslink/stable"><img src="https://img.shields.io/badge/docs-stable-blue.svg" alt="Stable"></a>
      <a href="$docslink/dev"><img src="https://img.shields.io/badge/docs-dev-blue.svg" alt="Dev"></a>
      """ : """
  <a href="$docslink"><img src="https://img.shields.io/badge/docs-$(docmatch[1])-blue.svg" alt="Doc"></a>
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

  # <a href="$repolink"><img src="https://img.shields.io/github/stars/$username/$pkgname.jl?style=social" alt="GitHub Repo stars"></a>
  return """
  <div class="badge">
  <a href="$repolink"><img src="https://img.shields.io/github/stars/$(repolink[begin+length("https://github.com/"):end])?style=social" alt="GitHub Repo stars"></a>
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
  pkginfos = [get_pkginfo(pkgname) for pkgname in pkgnames]
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

function hfun_metasection(args)
  dir_metasection = args[1]
  name_metasection = args[2]
  names_section = readdir(dir_metasection)
  path_current = locvar("fd_rpath")
  if occursin(dir_metasection, path_current)
    class_active = " active"
  else
    class_active = ""
  end
  if "index.md" in names_section
    href = "/$dir_metasection/"
  else
    href = "/$dir_metasection/$(splitext(names_section[1])[1])/"
  end
  script_html = """
  <li class="menu-list-item$class_active"><a href="$href" class="menu-list-link$class_active">$name_metasection</a>
    <ul class="menu-list-child-list">
  """
  regex = r"title = \"(.*?)\""
  for name in names_section
    name == "index.md" && continue
    path = joinpath(dir_metasection, name)
    string_md = read(path, String)
    title = match(regex, string_md).captures[1]
    href = '/' * chopsuffix(path, ".md")
    if path == path_current
      class = "menu-list-link active"
    else
      class = "menu-list-link"
    end
    script_html *= """
        <li class="menu-list-item"><a href="$href" class="$class">$title</a></li>
    """
  end
  script_html *= """
    </ul>
  </li>
  """
  return script_html
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
