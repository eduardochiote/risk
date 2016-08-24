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

# m = (a+m+b)/3
average.gas <- (40+60+58)/3
# s2 = (a(a-m)+b(b-a)+m(m-b))/18
variance.gas <- (40*(40-58)+60*(60-40)+58*(58-60))/18
# m = (a+m+b)/3
average.price <- (3.1+4.0+3.8)/3
# s2 = (a(a-m)+b(b-a)+m(m-b))/18
variance.price <- (3.1*(3.1-3.8)+4.0*(4.0-3.1)+3.8*(3.8-4.0))/18

# m = mx * my
average <- 20 * (average.gas * average.price)
# s2 = mx2 * sx2 + my2 * sy2
variance <- 20  * ((average.gas^2*variance.price)+(average.price^2*variance.gas))

standardDeviation <- variance^0.5

cat("Media =",average,"\n")
cat("Variancia =",variance,"\n")
cat("Desvio Padrao =",standardDeviation,"\n")
