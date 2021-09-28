# This file is a part of HistTools.jl, licensed under the MIT License (MIT).

# TODO: make it more general
"""
    reshape(h, range)

Change histogram format (min, max, bin size).
"""
function reshape(h::Histogram{<:Real,1}, format::AbstractRange; isdensity::Bool=false)
    hr = fit(Histogram,
             StatsBase.midpoints(h.edges[1]),
             Weights(h.weights),
             format)
    isdensity && (hr.weights .*= step(h.edges[1])/step(format))
    hr
end
