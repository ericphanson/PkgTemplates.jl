module PkgTemplates

using Base: current_project
using Base.Filesystem: contractuser

using Dates: month, today, year
using InteractiveUtils: subtypes
using LibGit2: LibGit2
using Pkg: Pkg, TOML, PackageSpec
using REPL.TerminalMenus: MultiSelectMenu, RadioMenu, request

using Mustache: entityMap, render
using Parameters: @with_kw

export
    Template,
    AppVeyor,
    CirrusCI,
    Citation,
    Codecov,
    Coveralls,
    Documenter,
    Gitignore,
    GitLabCI,
    License,
    Readme,
    Tests,
    TravisCI

"""
A plugin to be added to a [`Template`](@ref), which adds some functionality or integration.
"""
abstract type Plugin end

include("template.jl")
include("generate.jl")
include("plugin.jl")

end
