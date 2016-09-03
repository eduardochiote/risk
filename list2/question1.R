# Lista no. 2 – Risco de custo
#
# Faça um modelo de risco (em R) para o custo de um projeto de um gasoduto. 
# A opção preferida para a rota do gasoduto tem uma extensão de 260 km. 
#
# Existe um risco, porém, de que devido a oposição local, uma rota alternativa 
# com 290 km tenha que ser utilizada. Estima-se que a chance que isto aconteça 
# está na faixa entre 35% a 40%. 
#
# A tubulação para o gasoduto vem em seções de 8m 
# de comprimento. As estimativas de custo são dadas na tabela abaixo:
#
# Item - Custo (USD): Mínimo - Mais provável - Máximo
# Tubulação ($/8m ) 725 740 790
# Tempo para cavar vala (hh/8m) 12 16 25
# Custo de trabalho ($/hora) 17 18,5 23
# Transporte da tubulação($/8m) 6.1 6.6 7.4
# Tempo de soldagem dos tubos (horas/junção) 4 4,5 5
# Custo do sistema de filtragem 165.000 173.000 188.000
# Custo de acabamento ($/km) 14000 15000 17000
#
# Uma empresa especializada em gasodutos fez uma proposta de construção total 
# da obra por USD 45 milhões.
#
# Vale a pena? Como incorporar a incerteza da chance da rota alternativa
# no modelo?

library(triangle)

SIZE<-1000

for(i in 1:SIZE) {
  
  prob<-sample(x=c(0.35,0.36,0.37,0.38,0.39,0.40),size=1,replace=T)
  comprimento<-sample(x=c(260,290),size=1,replace=T,prob=c((1-prob),prob))
  
  tubulacao<-rtriangle(n=1,a=725,b=790,c=740)
  tempoCavarVala<-rtriangle(n=1,a=12,b=25,c=16)
  custoTrabalho<-rtriangle(n=1,a=17,b=23,c=18.5) 
  transporteTubulação<-rtriangle(n=1,a=6.1,b=7.4,c=6.1)
  tempoSoldagemTubos<-rtriangle(n=1,a=4,b=5,c=4.5)
  custoSistemaFiltragem<-rtriangle(n=1,a=165000,b=188000,c=173000)
  custoAcabamento<-rtriangle(n=1,a=14000,b=17000,c=15000) 
  
}





