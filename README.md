# UNINOVE Beamer Template

## Generate Fake Data
* Trânsito e Chuva (moderação positiva numa relação positiva)
  * densidade demográfica -- independente
  * trânsito -- dependente
  * chuva -- moderadora
  * infraestrutura viária (km de vias) -- controle
* Distância Solar (moderação positiva numa relação negativa)
  * distância solar -- independente
  * temperatura planeta -- dependente
  * coeficiente de reflexão -- moderadora

## GLM in Julia

* [GLM.jl](https://github.com/JuliaStats/GLM.jl)
* [RegressionTables.jl](https://github.com/jmboehm/RegressionTables.jl)

```julia
using GLM, RegressionTables

lm = fit(LinearModel, @formula(SepalLength ~ SepalWidth), df)
t = coeftable(lm)
regtable(lm; renderSettings = latexOutput())
regtable(lm; renderSettings = latexOutput("myoutputfile.tex"))
```

## Cargo Cult Science

Mr. Young wanted to see if he could fool rats into finding food in a hallway of doors, so he went step by step trying to find out how they kept finding the food, first repainting doors to be exactly the same and then deodorizing the cheese and eventually finding out that they can hear differences in their steps on the floor, so he then put sand all along the floor and finally fooled them. People disregard this because he technically didn't discover anything about the rats, but went through the process of finding out how to fool rats. People who ignore his results are getting misguided answers as they ignore his discoveries and instead look for new ones.

