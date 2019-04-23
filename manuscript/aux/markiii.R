library(magrittr)
library(ggplot2)
set.seed(2600)

mark_ii <- function(x, y, eta, reps=1) {
  
  # inicializa pesos randomicos de distribuicao normal
  w1 <- rnorm(n = (dim(x)[2]+1)) %>% as.matrix # numero de pesos = numero de colunas em x + bias
  
  w21 <- rnorm(2) %>% as.matrix 
  w22 <- rnorm(2) %>% as.matrix 
  w23 <- rnorm(2) %>% as.matrix 
  
  ypreds <- rep(0,dim(x)[1]) # inicializa predicoes em 0
  yerrors <- rep(0,dim(x)[1]) # inicializa predicoes em 0
  for (j in 1:reps){
    print(paste("This is training epoch:",j))
    print(paste("Current weights:",w1,w21,w21,w23))
    
    # Processa as observacoes em x de forma aleatoria
    for (i in sample(1:length(y),replace=F)) { 
      # predicao
      ypred1 <- sum(w1 %*% c(as.numeric(x[i, ]),1))  
      
      ypred21 <- sum(w21 %*% as.numeric(ypred1))
      ypred22 <- sum(w22 %*% as.numeric(ypred1))
      ypred23 <- sum(w23 %*% as.numeric(ypred1))
      
      out <- sum(ypred21,ypred22,ypred23)
      
      # update em w . Eta ja ajustado para 1/2*eta
      delta_w22 <- eta * (-1) * (y[i] - (ypred21 + ypred22 + ypred23)) * ypred1 #d/dw22(targ - out)^2
      delta_w21 <- eta * (-1) * (y[i] - (ypred21 + ypred22 + ypred23)) * ypred1 #d/dw21(targ - out)^2
      delta_w23 <- eta * (-1) * (y[i] - (ypred21 + ypred22 + ypred23)) * ypred1
      #d/dw1(targ - out)^2 = 2(y[i] - (ypred21 + ypred22)) (-1) (sum(w21*w1*x[i,]) + sum(w21*w1*x[i,]))'
      # d/dw1 (sum(w21*w1*x[i,]) + sum(w21*w1*x[i,])) =  (sum(w21*x[i,]) + sum(w21*x[i,]))
      delta_w1 <- eta * (y[i] - (ypred21 + ypred22 + ypred23)) * -1 * 
        (sum(w21 %*% c(as.numeric(x[i,]),1)) + sum(w22 %*% c(as.numeric(x[i,]),1)) +
           sum(w23 %*% c(as.numeric(x[i,]),1)))
      #nota: x[i,] sera multiplicado como matriz (dot product)
      w1 <- w1 - delta_w1
      w21 <- w21 - delta_w21
      w22 <- w22 - delta_w22
      w23 <- w23 - delta_w23
      
      ypreds[i] <- out # salva predicao21 atual
      yerrors[i] <- ypreds[i] - y[i]
    }
    print(paste("Mean squared error:", mean((yerrors)^2)))
  }
  return(ypreds)
}

train_df <- iris[, c(1, 2, 3)]   
names(train_df) <- c("s.len", "s.wid", "p.len")
head(train_df)
train_df[60:65,]

x_features <- train_df[, c(1, 2)]
y_target <- train_df[, 3]

# Convergencia boa
mark_ii_preds <- mark_ii(x = x_features,y = y_target,
                         eta=0.000001,reps = 40)

mark_ii_preds <- mark_ii(x = x_features,y = y_target,
                         eta=0.0000005,reps = 100)


acc_data <- data.frame(y_preds=mark_ii_preds,
                       y_targs=y_target)

acc_data$errors <- y_target - mark_ii_preds 
cor.test(acc_data$y_preds,acc_data$y_targs)

ggplot(acc_data,aes(y=y_preds,x=y_targs,color=errors))+
  geom_point()+xlim(0,10)+ylim(0,10)+
  geom_abline(slope = 1,intercept = 0)

