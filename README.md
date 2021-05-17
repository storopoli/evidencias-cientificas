# UNINOVE Beamer Template

* Generate Fake Data
  * Trânsito e Chuva (moderação positiva numa relação positiva)
    * densidade demográfica -- independente
    * trânsito -- dependente
    * chuva -- moderadora
    * infraestrutura viária (km de vias) -- controle
  * Distância Solar (moderação positiva numa relação negativa)
    * distância solar -- independente
    * temperatura planeta -- dependente
    * coeficiente de reflexão -- moderadora

* GLM in Julia
  * [GLM.jl](https://github.com/JuliaStats/GLM.jl)
  * [RegressionTables.jl](https://github.com/jmboehm/RegressionTables.jl)

```julia
using GLM, RegressionTables

lm = fit(LinearModel, @formula(SepalLength ~ SepalWidth), df)
t = coeftable(lm)
regtable(lm; renderSettings = latexOutput())
regtable(lm; renderSettings = latexOutput("myoutputfile.tex"))
```
