# Como Avaliar Evidências Científicas

[![CC BY-SA
4.0](https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg)](http://creativecommons.org/licenses/by-sa/4.0/)

Slides apresentados no Ateliê da Linha de Pesquisa de Estratégia sobre "Como Avaliar Evidências Científicas" no Programa de Pós-Graduação em Administração -- Mestrado e Doutorado Acadêmico da [UNINOVE](https://www.uninove.br).

## Author

José Eduardo Storopoli, PhD - [*Lattes* CV](http://lattes.cnpq.br/2281909649311607) - [ORCID](https://orcid.org/0000-0002-0559-5176) - <https://storopoli.io>

<josees@uni9.pro.br>

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
