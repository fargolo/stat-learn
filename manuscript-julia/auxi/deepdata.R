library(pROC)
library(deepnet)
library(h2o)
library(ggplot2)
library(car)
  
normalize <- function(x){
  x.mean <- mean(x)
  x.std <- sd(x)
  y <- vapply(X=x, 
              FUN=function(x) 1/x.std*(sqrt(2*pi)*exp((-0.5)*(x-x.mean/x.std)^2)),
              FUN.VALUE=1)
  return(y)
  }

samples.ind <- sort(rnorm(n = 1000, mean=0, sd = 1.8))
inv.norm <- (-1)*normalize(samples.ind)
inv.norm <- inv.norm + rnorm(mean = 0,n = 1000,sd=0.2)
inv.normt <- inv.norm + 0.6
inv.both <- c(inv.norm,inv.normt)
names <- c(rep("1",1000),rep("2",1000))
ind <- c(1:1000,1:1000)
inv.ds <- data.frame(beta=inv.both,type=names,tempo=ind)
inv.ds$type_dic <- numeric(length=2000)
inv.ds$type_dic <- car::recode(inv.ds$type,"'1'=1;'2'=0")

plot_one <- ggplot(data=inv.ds,aes(y=beta,x=tempo,color=type))+
         geom_point()+
  ylab("Hormônio (Beta)")+xlab("Tempo (t)")+
  scale_color_hue(name="Amostra",
                  labels=c("Sem esteroides","Esteroides"))+
  scale_x_continuous(labels=NULL)

ggsave(plot_one,filename="curves5000.png",width=17,
       height=17,units="cm",dpi=300,type="cairo-png")


# Regression logit
logist.fit <- glm(type_dic ~ beta + tempo,
                  family=binomial,data=inv.ds)

# Predicts and ROC
prob=predict(logist.fit,type=c("response"))
inv.ds$prob=prob
curve.glm <- roc(type_dic ~ prob, data = inv.ds)
plot(curve.glm)    

# Neural Net
inv.ds$tempo.norm <- normalize(inv.ds$tempo)


# Predicts and ROC
prob=predict(logist.fit,type=c("response"))
inv.ds$prob=prob
curve.glm <- roc(type_dic ~ prob, data = inv.ds)
plot(curve.glm)    

# Neural Net
inv.ds$tempo.norm <- normalize(inv.ds$tempo)

deep.log.dbn <- dbn.dnn.train(
  x=as.matrix(inv.ds[,c("beta","tempo.norm")]),
  y=as.numeric(as.character(inv.ds$type_dic)),
  hidden = c(2), activationfun = "sigm",
  learningrate=0.95, momentum=0.89, learningrate_scale=1,
  output = "sigm", numepochs=50, batchsize= 15)

inv.ds$deep.test <- nn.predict(deep.log.dbn,
                               x=as.matrix(inv.ds[,c("beta","tempo")]))

curve <- roc(type_dic ~ deep.test, data=inv.ds)
plot(curve)    
curve

inv.ds$deep.test <- nn.predict(deep.log.dbn,
                               x=as.matrix(inv.ds[,c("beta","tempo")]))

curve <- roc(type_dic ~ deep.test, data=inv.ds)
plot(curve)    
curve

deep.log.dbn <- dbn.dnn.train(
  x=as.matrix(inv.ds[,c("beta","tempo.norm")]),
  y=as.numeric(as.character(inv.ds$type_dic)),
  hidden = c(2), activationfun = "sigm",
  learningrate=0.1, momentum=0.85, learningrate_scale=1,
  output = "sigm", numepochs=10, batchsize=100)

inv.ds$deep.test <- nn.predict(deep.log.dbn,
                               x=as.matrix(inv.ds[,c("beta","tempo")]))

curve <- roc(type_dic ~ deep.test, data=inv.ds)
plot(curve)    
curve
inv.ds$deep.test <- nn.predict(deep.log.dbn,
                               x=as.matrix(inv.ds[,c("beta","tempo")]))

curve <- roc(type_dic ~ deep.test, data=inv.ds)
plot(curve)    
curve


inv.ds$deep.test <- nn.predict(deep.log.dbn,
                               x=as.matrix(inv.ds[,c("beta","tempo")]))

curve <- roc(type_dic ~ deep.test, data=inv.ds)
plot(curve)    
curve
 


# H2O

h2o.init()
deep.log <- h2o.deeplearning(
  x=c("beta","tempo"), y="type_dic",
  training_frame= as.h2o(inv.ds,destination_frame="inv"),
  activation="Tanh",categorical_encoding="Binary",verbose = T,   
  hidden=c(2), # 1 hidden with 2 neurons
  epochs=1)
