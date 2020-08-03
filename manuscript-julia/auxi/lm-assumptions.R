library(lmtest)
library(faraway)
library(car)
library(MASS)

#Criar função interativa
#Incluir possibilidade de regressão hierárquica com mtable(modelo1,modelo2)
#do pacote memisc

#Plots por pares
pairs(iris)
cor.test(iris$Sepal.Length, iris$Petal.Width)

#Ajusta Modelo
MyModel <- lm(Sepal.Length ~ Petal.Width, data = iris)

#Sumario do Modelo
summary(MyModel)

#Normalidade dos residuos
plot (density(rstudent(MyModel)))
qqnorm(rstudent(MyModel))
shapiro.test(rstudent(MyModel))
ks.test(rstudent(MyModel),"pnorm")

#Homocedasticidade
plot (MyModel$fitted.values,rstudent(MyModel))
#lty traceja a linha
abline(h = 0, lty = 3) #
bptest(MyModel)

#Independencia de residuos
dwtest(MyModel, data = iris)

#Multicolinearidade
vif(MyModel) #Ponto de corte = 10
1/(vif(MyModel)) #Tolerancia

#Leverage
ModelMatrix <- model.matrix(MyModel)
Leverage <- hat(ModelMatrix) #Pontos de alavanca
plot (Leverage) #Index Plot of Leverages
abline (h = 2*ncol(ModelMatrix)/nrow(ModelMatrix))

#Identificar pontos no grafico clicando no plot, press stop to finish
#identify(1:nrow(ModelMatrix),Leverage) 

#Cook
CookDis <- cooks.distance(MyModel)
plot(CookDis)

#dfbeta
Mydfbeta <- dfbetas(MyModel)
for (i in 2:ncol(Mydfbeta)){
  plot(Mydfbeta[,i],ylab = colnames(Mydfbeta)[i] )
  abline (h=0)
}

#DFFit
Mydff <- dffits(MyModel)
plot(Mydff, ylab = "DFFITS")
abline(h=0)

#COVRatio
MyCovr <- covratio(MyModel)
plot(MyCovr, ylab = "COVRATIO")
abline(h = 1)

#Medidas de influencia
#influence.measures calcula todas as medidas de influencia
#e retorna para um objeto. A matriz is.inf tem vetores lógicos
#Com TRUE para pontos de influencia.
MyInfMeas <- influence.measures(MyModel)
which(apply(MyInfMeas$is.inf,1,any))

#Partial Residual Plot
crPlots(MyModel, line = F)

#Added variable plots
#Regressao parcial
av.plots (MyModel,data=iris)

#Box Cox Transf
boxcox (MyModel, plotit=T,lambda=seq(-1,1,by=0.25))
