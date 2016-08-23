# Exercício
# A frota de uma empresa de taxi é composta por 20 veículos. Cada uma deles
# consome (40,60,58) litros de gasolina por dia a um custo variável de
# (3.1,4.0,3.8) reais por litro.
# 
# Crie 3 modelos de risco de custo para o gasto diário da empresa de taxi.
# 1-simulando gastos individuais para cada um dos 20 taxis da frota
# 2-simulando o gasto diário de um taxi e usando o TCL
# 2-usando a fórmula aproximada para o produto de 2 VAs e aplicando o TCL

library (triangle)
size <- 10000
total <- vector(length=size)

for(i in 1:size) {
  gas <- rtriangle(n=20,a=40,b=60,c=58)
  price <- rtriangle(n=20,a=3.1,b=4.0,c=3.8)
  cost <- gas*price
  total[i] <- sum (cost)
}

average <- mean(total)
standardDeviation <- sd(total)
median <- median(total)
variance <- var(total)

cat("Media =",average,"\n")
cat("Desvio Padrao =",standardDeviation,"\n")
cat("Mediana =",median,"\n")
cat("Variancia =",variance,"\n")

h<-hist(total, breaks=10, density=10, col="lightgray", xlab="Despesa", main="Gasto Total Diário com Combustível") 

xfit<-seq(min(total),max(total),length=40) 
yfit<-dnorm(xfit,mean=mean(total),sd=sd(total)) 
yfit <- yfit*diff(h$mids[1:2])*length(total) 
lines(xfit, yfit, col="black", lwd=1)

abline(v = average, col = "black", lwd = 1)
