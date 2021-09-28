# This file is a part of HistTools.jl, licensed under the MIT License (MIT).

__precompile__(true)

"""
    HistTools

Bayesian Blocks algorithm described in [Scargle 2021](https://doi.org/10.1088/0004-637X/764/2/167).
"""
module HistTools

using StatsBase

import StatsBase: reshape

include("core.jl")

end # module
