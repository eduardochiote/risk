# Exercício
# A frota de uma empresa de taxi é composta por 20 veículos. Cada uma deles
# consome (40,60,58) litros de gasolina por dia a um custo variável de
# (3.1,4.0,3.8) reais por litro.
# 
# Crie 3 modelos de risco de custo para o gasto diário da empresa de taxi.
# 1-simulando gastos individuais para cada um dos 20 taxis da frota
# 2-simulando o gasto diário de um taxi e usando o TCL
# 3-usando a fórmula aproximada para o produto de 2 VAs e aplicando o TCL


# 3-usando a fórmula aproximada para o produto de 2 VAs e aplicando o TCL

# Distribuição Triangular
# 
# X = variável contínua onde : otimista (a), mais provável(m) e pessimista (b)
# m = (a+m+b)/3
# s2 = (a (a-m)+b(b-a)+m(m-b))/18

# Teorema 1: Seja X uma VA com média (m) e desvio padrão (s)
# 
# se X1=c1*X + c2
# então X1 têm como parâmetros
# m1 = c1*m + c2
# s21= c1^2*s2

# Distribuição de probabilidade do produto
# 
# Sejam X,Y duas VAs independentes com parâmetros (mx, s2x) e (my, s2y) 
# respectivamente. Se Z=X*Y então:
# m = mx * my
# s2 = my^2*s2x + mx^2*s2y

# Distribuição Triangular

# m = (a+m+b)/3
average.gas <- (40+60+58)/3
# s2 = (a(a-m)+b(b-a)+m(m-b))/18
variance.gas <- (40*(40-58)+60*(60-40)+58*(58-60))/18
# m = (a+m+b)/3
average.price <- (3.1+4.0+3.8)/3
# s2 = (a(a-m)+b(b-a)+m(m-b))/18
variance.price <- (3.1*(3.1-3.8)+4.0*(4.0-3.1)+3.8*(3.8-4.0))/18

# Distribuição de probabilidade do produto

# m = mx * my
average.single <- average.gas * average.price
# s2 = my^2*s2x + mx^2*s2y
variance.single <- (average.gas^2*variance.price)+(average.price^2*variance.gas)

# Teorema 1: Seja X uma VA com média (m) e desvio padrão (s)

# m1 = c1*m + c2
average <- 20 * average.single
# s1^2= c1^2*s2
variance <- 20  * variance.single


standardDeviation <- variance^0.5

cat("Media =",average,"\n")
cat("Variancia =",variance,"\n")
cat("Desvio Padrao =",standardDeviation,"\n")
