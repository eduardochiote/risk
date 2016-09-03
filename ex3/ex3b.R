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

# m = (a+m+b)/3
mediaDuracao <- (3.75 + 4.25 + 5.5) / 3
# s2 = (a(a-m)+b(b-a)+m(m-b))/18
varianciaDuracao <- (3.75*(3.75-4.25)+5.5*(5.5-3.75)+4.25*(4.25-5.5))/18

# m1 = c1*m + c2
media <- 562 * 7.5 * mediaDuracao
# s21= c1^2*s2
variancia <- (562^2) * (7.5^2) * varianciaDuracao
# d1=s21^0.5
desvio <- variancia^0.5

total <- rnorm(size, mean=media, sd=desvio)

funcp <- ecdf(total)

cat("Media =", media,"\n")
cat("Variancia =", variancia,"\n")
cat("Desvio Padrao =", desvio,"\n")
#cat("Mediana =", mediana,"\n")

plot(funcp, main="Distribuição cumulativa obtida usando o TCL")
abline(h = 0.85, col = "black", lwd = 1)