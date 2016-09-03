# Exercício
# Todas as sextas-feiras os principais executivos da NEW ENGLAND BOAT FURNITURE 
# vão almoçar juntos, a convite da empresa. 
# Entre 16 e 22 executivos participam destes almoços, sendo 18 o valor mais provável. 
# Cada executivo consome entre US$ 25 e US$ 36, sendo US$ 28 o valor mais provável. 
# Um ano possui 40, 41 ou 42 sextas-feiras úteis. 
# ESTIME O TOTAL GASTO DA NEW ENGLAND BOAT FURNITURE COM ESTES ALMOÇOS. (no ano)

library(triangle)

SIZE <- 10000
total <- vector(length=SIZE)

for(i in 1:SIZE) {
  num <- sample(c(40,41,42), 1,replace=T)
  quant <- rtriangle(n=num,a=16,b=22,c=18)
  valor <- rtriangle(n=num,a=25,b=36,c=28)
  total[i] <- sum(quant*valor) 
}

media <- mean(total)
variancia <- var(total)
desvio <- sd(total)
mediana <- median(total)
maximo <- max(total)
minimo <- min(total)
funcp <- ecdf(total)

cat("Media =", media,"\n")
cat("Variancia =", variancia,"\n")
cat("Desvio Padrao =", desvio,"\n")
cat("Mediana =", mediana,"\n")
cat("Maximo =", maximo,"\n")
cat("Minimo =", minimo,"\n")

print(summary(funcp))

plot(funcp, main="Distribuição cumulativa obtida usando a abordagem força-bruta")
abline(h = 0.85, v=23130, col = "black", lwd = 1)
