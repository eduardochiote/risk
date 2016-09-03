
for (i in 1:50000) {
  x[i] <- sum(sample(1:6,2,replace=TRUE))
}

#x <- rnorm(10000, mean = 7, sd = 2.4)
print(x)
cat("Media =",print(mean(x), digits=3, zero.print = "."),"\n")
cat("Desvio Padrao =",print(sd(x), digits=3, zero.print = "."),"\n")
cat("Mediana =",print(median(x), digits=3, zero.print = "."),"\n")
cat("Variancia =",print(var(x), digits=3, zero.print = "."),"\n")
hist(x, main = "Histograma do experimento")
#abline(v=mean(x))

# dunif(x, min = 0, max = 1, log = FALSE)
# punif(q, min = 0, max = 1, lower.tail = TRUE, log.p = FALSE)
# qunif(p, min = 0, max = 1, lower.tail = TRUE, log.p = FALSE)
# runif(n, min = 0, max = 1)
# 
# dbinom(x, size, prob, log = FALSE)
# pbinom(q, size, prob, lower.tail = TRUE, log.p = FALSE)
# qbinom(p, size, prob, lower.tail = TRUE, log.p = FALSE)
# rbinom(n, size, prob)
# 
# dnorm(x, mean = 0, sd = 1, log = FALSE)
# pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
# qnorm(p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
# rnorm(n, mean = 0, sd = 1)
# 
# dtriangle(x, a=0, b=1, c=(a+b)/2)
# ptriangle(q, a=0, b=1, c=(a+b)/2)
# qtriangle(p, a=0, b=1, c=(a+b)/2)
# rtriangle(n, a=0, b=1, c=(a+b)/2)