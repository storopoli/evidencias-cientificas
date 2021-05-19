using DataFrames
using GLM
using RegressionTables

include("sim_data.jl")

lm_pos = fit(LinearModel, @formula(dep ~ indep * moderation), df_pos)
regtable(lm_pos; standardize_coef=true,
    labels=Dict(
        "dep" => "Trânsito",
        "indep" => "Densidade Demográfica",
        "moderation" => "Chuva",
        "indep & moderation" => "Densidade Demográfica * Chuva",
        "(Intercept)" => "(Constante)"),
    regression_statistics=[:r2],
    print_estimator_section=false,
    renderSettings=latexOutput("tables/table_pos.tex"))

lm_neg = fit(LinearModel, @formula(dep ~ indep * moderation), df_neg)
regtable(lm_neg; standardize_coef=true,
    labels=Dict(
        "dep" => "Temperatura",
        "indep" => "Distância Solar",
        "moderation" => "Coeficiente de Reflexão",
        "indep & moderation" => "Distância Solar * Coeficiente de Reflexão",
        "(Intercept)" => "(Constante)"),
    regression_statistics=[:r2],
    print_estimator_section=false,
    renderSettings=latexOutput("tables/table_neg.tex"))
