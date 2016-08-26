# Exercício
# Um casco de navio consiste de 562 placas metálicas que devem ser rebitadas. 
# Estima-se que o tempo gasto por um rebitador seja (3h45,5h30,4h15). 
# O rebitador recebe USD$7.50 por hora trabalhada.
# 1. Qual o risco de custo de mão-obra para a rebitagem?
# 2. Compare as distribuições cumulativas obtidas usando a abordagem força-bruta 
# com aquela usando o TCL

library(triangle)

# Distribuições cumulativas obtidas usando o TCL

size <- 10000

mediaDuracao <- (3.75 + 5.5 + 4.25) / 3
varianciaDuracao <- (3.75^2 + 5.5^2 + 4.25^2 - 3.75*5.5 - 3.75*4.24 - 5.5*4.25) / 18

media <- 562 * 7.5 * mediaDuracao 
variancia <- ((562*7.5)^2) * varianciaDuracao
desvio <- variancia^0.5
funcp <- ecdf(total)

total <- rnorm(size, mean=media, sd=desvio)
#total <- qnorm(percentuais, mean=18967, sd = 65.4)

cat("Media =", media,"\n")
cat("Variancia =", variancia,"\n")
cat("Desvio Padrao =", desvio,"\n")
#cat("Mediana =", mediana,"\n")

plot(funcp, main="Distribuição cumulativa obtida usando o TCL")
abline(h = 0.85, col = "black", lwd = 1)