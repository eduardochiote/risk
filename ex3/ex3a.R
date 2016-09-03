# Exercício
# Um casco de navio consiste de 562 placas metálicas que devem ser rebitadas. 
# Estima-se que o tempo gasto por um rebitador seja (3h45,5h30,4h15). 
# O rebitador recebe USD$7.50 por hora trabalhada.
# 1. Qual o risco de custo de mão-obra para a rebitagem?
# 2. Compare as distribuições cumulativas obtidas usando a abordagem força-bruta 
# com aquela usando o TCL

library(triangle)

# Usando a abordagem força-bruta

size <- 10000
total <- vector(length=size)

for (i in 1:size) {
  duracao <- rtriangle(562, 225/60, 330/60, 255/60)
  total[i] <- sum(duracao) * 7.5
}

media <- mean(total)
variancia <- var(total)
desvio <- sd(total)
mediana <- median(total)
funcp <- ecdf(total)

cat("Media =", media,"\n")
cat("Variancia =", variancia,"\n")
cat("Desvio Padrao =", desvio,"\n")
cat("Mediana =", mediana,"\n")

plot(funcp, main="Distribuição cumulativa obtida usando a abordagem força-bruta")
abline(h = 0.85, col = "black", lwd = 1)
