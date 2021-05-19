using DataFrames
using Distributions
using Random:seed!

seed!(123)
const N = 1_000

function random_noise(effect_size::Int64, N::Int64)
    rand(Uniform(0, effect_size), N)
end

indep = rand(Normal(), N)
moderation = rand(Exponential(2), N)
indep_moderation = indep .* moderation
dep_positive = 100 .+ (indep * 10) + random_noise(2, N) + (indep_moderation + random_noise(2, N))
dep_negative = 10 .- (indep * 10) + random_noise(2, N) + (indep_moderation + random_noise(2, N))

df_pos = DataFrame(
    id=1:N,
    indep=indep,
    moderation=moderation,
    dep=dep_positive
)

df_neg = DataFrame(
    id=1:N,
    indep=indep,
    moderation=moderation,
    dep=dep_negative
)
