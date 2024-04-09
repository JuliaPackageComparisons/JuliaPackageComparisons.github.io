#*===========================================================================================================================*#
#*==========================   Utility functions for interactive, manual use by humans, not bots   ==========================*#
#*===========================================================================================================================*#

#! Run this in your local Julia project, not the project for the web-page!

##? Check if the branchname in PKGINFOS mismatches the value found automatically:
include("utils.jl")   # To define PKGINFOS
using GitHub
buffered_github_responses = Dict{String, Repo}()   # Access takes some time, and you can reach rate limits. Caching responses helps alleviate these issues. 

#? See https://github.com/JuliaWeb/GitHub.jl?tab=readme-ov-file#authentication for information about authentuication.
if haskey(ENV, "GITHUB_AUTH")
    is_authenticated = true
    auth = GitHub.authenticate(ENV["GITHUB_AUTH"]) # don't hardcode your access tokens!
else
    is_authenticated = false
end
GitHub.repo(PKGINFOS[1].repolink[begin+length("https://github.com/"):end]; auth)|>propertynames
let
    n_packages = length(PKGINFOS)
    n_good_packages = 0  # Initialization
    for PKGINFO in PKGINFOS
        if haskey(buffered_github_responses, PKGINFO.pkgname)
            true_branchname = buffered_github_responses[PKGINFO.pkgname].default_branch
        else
            try
                if is_authenticated
                    repo_object = GitHub.repo(PKGINFO.repolink[begin+length("https://github.com/"):end]; auth)
                else
                    repo_object = GitHub.repo(PKGINFO.repolink[begin+length("https://github.com/"):end])
                end
                true_branchname = repo_object.default_branch
                buffered_github_responses[PKGINFO.pkgname] = repo_object
            catch e
                @warn "Caught an error while requesting data about the GitHub repo for $(PKGINFO.pkgname). Rethrowing error."
                rethrow(e)
            end
        end
        defined_branchname = PKGINFO.branch
        if true_branchname == defined_branchname
            n_good_packages += 1
        else
            @info """
            Discrepancy found for package "$(PKGINFO.pkgname)"
            True default branch:     $true_branchname
            Branch name in PKGINFOS: $defined_branchname
            """
        end
    end
    @info "Check complete. $n_good_packages/$n_packages had the right branch name."
end