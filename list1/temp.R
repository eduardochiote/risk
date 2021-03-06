n=10
p=0.5
  
#valores da VA "numero de coroas ao jogar uma moeda dez vezes"   
x<-0:n

#matriz com a probabilidades binomial e normal
y<-matrix(nrow=n+1,ncol=2)

#coluna 1: valores da binomial
y[,1]<-dbinom(x,n,p)

#parametros da normal aproximanda
mu<-n*p
sigma<-(n*p*(1-p))^0.5

#coluna 2: valores da normal
y[,2]<-dnorm(x,mu,sigma)

#plotando as duas funçoes sobrepostas
matplot(x,y,type="l") 

#retorna valores numa lista
r<-list(xaxis=x,yaxis=y)
