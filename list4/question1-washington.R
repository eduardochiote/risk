centrocomunitario<-function(){
  library(triangle)  
  ns<-3000
  #Para cada um dos almocos
  ret<-vector(length = ns)
  for (i in 1:ns){
    cTotAlm <-0
    # Selecionando o custo do plano inicial 
    #utilizando uma moeda
    #pode variar com uma chance de 50%
    moeda <- sample(x=c(0,1),size = 1,replace = TRUE,prob = c(0.5,0.5))
    if (moeda==0)
    {
      planIni <- rtriangle(1,15,19,17)
    }
    else
    {
      planIni <- rtriangle(1,20,25,22)
    }
    cTotAlm <- cTotAlm + planIni
    #Selecionando o custo da terraplanagem 
    #utilizando uma moeda viciada
    #pode variar com uma chance de 75% para determinada triangular
    moedaViciada <- sample(x=c(0,1),size = 1,replace = TRUE,prob = c(0.75,0.25))
    if (moedaViciada==0)
    {
      terraplan <- rtriangle(1,41,47,42)
    }
    else
    {
      terraplan <- rtriangle(1,45,50,47)
    }
    cTotAlm <- cTotAlm + terraplan
    
    material <- rtriangle(1,100,110,105)
    cTotAlm <- cTotAlm + material
    
    maoObra <- rtriangle(1,40,52,45)
    cTotAlm <- cTotAlm + maoObra
    
    alugEquip <- rtriangle(1,35,40,36)
    cTotAlm <- cTotAlm + alugEquip
    
    acabJard <- rtriangle(1,25,27,26)
    cTotAlm <- cTotAlm + acabJard
    
    admin <- rtriangle(1,15,19,17)
    cTotAlm <- cTotAlm + admin 
    
    #reserva  - Os custos são x 1000 dólares
    ret[i]<-cTotAlm * 1000
    
  }
  ret  
  
  
}