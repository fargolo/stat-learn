library(magrittr)
set.seed(2600)

mark_ii <- function(x, y, eta, reps=1) {
  
  # inicializa pesos randomicos de distribuicao normal
  w1 <- rnorm(dim(x)[2]) # numero de pesos = numero de colunas em x
  
  w21 <- rnorm(1)
  w22 <- rnorm(1)
  
  ypreds1 <- rep(0,dim(x)[1]) # inicializa predicoes em 0
  for (i in 1:reps){
    # Processa as observacoes em x de forma aleatoria
    for (i in sample(1:length(y),replace=F)) { 
      # predicao
      ypred1 <- sum(w1 * as.numeric(x[i, ]))  
      
      ypred21 <- sum(w21 * as.numeric(ypred1))
      ypred22 <- sum(w22 * as.numeric(ypred1))
      
      out <- sum(ypred21,ypred22)
      
      # update em w . Eta ja ajustado para 1/2*eta
      delta_w22 <- eta * (-1) * (y[i] - ypred22) * ypred1
      delta_w21 <- eta * (-1) * (y[i] - ypred21) * ypred1
      delta_w1 <- eta * (y[i] - ypred21 - ypred22) * -1 * (sum(w1*w21) + sum(w1*w22))
      #nota: x[i,] sera multiplicado como matriz (dot product)
      w1 <- w1 - delta_w1
      w21 <- w21 - delta_w21
      w22 <- w22 - delta_w22
      ypreds[i] <- out # salva predicao21 atual
    }
  }
  return(ypreds)
}

train_df <- iris[1:100, c(1, 2, 3)]   
names(train_df) <- c("s.len", "s.wid", "p.len")
head(train_df)
train_df[60:65,]

x_features <- train_df[, c(1, 2)]
y_target <- train_df[, 3]

mark_ii_preds <- mark_ii(x = x_features,y = y_target,
                         eta=0.001,reps = 10)
acc_data <- data.frame(y_preds=mark_ii_preds,
                     x_targs=y_target)

acc_data$errors <- y_target - mark_ii_preds 
ggplot(acc_data,aes(y=y_preds,x=x_targs,color=errors))+
  geom_point()+xlim(0,20)+ylim(0,20)+
  geom_abline(slope = 1,intercept = 0)
  

# 100 reps Erros menores, mais balanceados
mark_ii_preds <- mark_ii(x = x_features,y = y_target,
                         eta=0.001,reps = 100)
acc_data$errors <- y_target - mark_ii_preds 
ggplot(acc_data,aes(y=y_preds,x=x_targs,color=errors))+
  geom_point()+xlim(0,20)+ylim(0,20)+
  geom_abline(slope = 1,intercept = 0)


# 100 reps Erros menores, mais balanceados
mark_ii_preds <- mark_ii(x = x_features,y = y_target,
                         eta=0.001,reps = 10)
acc_data$errors <- y_target - mark_ii_preds 
ggplot(acc_data,aes(y=y_preds,x=x_targs,color=errors))+
  geom_point()+xlim(0,20)+ylim(0,20)+
  geom_abline(slope = 1,intercept = 0)

## Non linear

train_df <- iris[, c(1, 2, 3)]   
names(train_df) <- c("s.len", "s.wid", "p.len")
head(train_df)
train_df[60:65,]

x_features <- train_df[, c(1, 2)]
y_target <- train_df[, 3]

mark_ii_preds <- mark_ii(x = x_features,y = y_target,
                         eta=0.00002,reps = 12)

acc_data <- data.frame(y_preds=mark_ii_preds,
                       y_targs=y_target)

acc_data$errors <- y_target - mark_ii_preds 

ggplot(acc_data,aes(y=y_preds,x=y_targs,color=errors))+
  geom_point()+xlim(0,10)+ylim(0,10)+
  geom_abline(slope = 1,intercept = 0)
