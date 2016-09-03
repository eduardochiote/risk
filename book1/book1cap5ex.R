

x <- c(rep(30,3),rep(35,4),rep(40,5),rep(45,6),rep(50,4),rep(55,2),60,65,70)
p <- x / length(x)

moda <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

media <- mean(x)
variancia <- var(x)
desvio <- sd(x)
mediana <- median(x)
maximo <- max(x)
minimo <- min(x)

funcp <- ecdf(x)
num <- x[which(funcp(x)>0.8)[1]]

cat("Media =", media,'\tProb=',1-funcp(media),"\n")
cat("Variancia =", variancia,"\n")
cat("Desvio Padrao =", desvio,"\n")
cat("Mediana =", mediana,'\tProb=',1-funcp(mediana),"\n")
cat("Moda =", moda(x),'\tProb=',1-funcp(moda(x)),"\n")
cat("Maximo =", maximo,'\tProb=',1-funcp(maximo),"\n")
cat("Minimo =", minimo,'\tProb=',1-funcp(minimo),"\n")
cat("Valor 20% =", num,'\tProb=',1-funcp(num),"\n")

plot(funcp, main="Distribuição Cumulativa")
abline(h = funcp(num), v=num, col = "black", lwd = 1)
