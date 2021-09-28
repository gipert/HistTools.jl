# Use
#
#     DOCUMENTER_DEBUG=true julia --color=yes make.jl local [nonstrict] [fixdoctests]
#
# for local builds.

using Documenter
using HistTools

makedocs(
    sitename = "HistTools",
    modules = [HistTools],
    format = Documenter.HTML(
        prettyurls = !("local" in ARGS),
        canonical = "https://gipert.github.io/HistTools.jl/stable/"
    ),
    pages = [
        "Home" => "index.md",
        "API" => "api.md",
        "LICENSE" => "LICENSE.md",
    ],
    doctest = ("fixdoctests" in ARGS) ? :fix : true,
    linkcheck = !("nonstrict" in ARGS),
    strict = !("nonstrict" in ARGS),
)

deploydocs(
    repo = "github.com/gipert/HistTools.jl.git",
    forcepush = true,
    push_preview = true,
)
