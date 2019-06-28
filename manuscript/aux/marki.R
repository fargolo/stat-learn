mark_i <- function(x, y, eta) {
  require(magrittr)
  phi_heavi <- function(x){ifelse(x >=0,1,-1)}
  # inicializa pesos randomicos de distribuicao normal
  w <- rnorm(dim(x)[2]) # numero de pesos = numero de colunas em x
  ypreds <- rep(0,dim(x)[1]) # inicializa predicoes em 0
  # Processa as observacoes em x de forma aleatoria
  for (i in sample(1:length(y),replace=F)) {
    # predicao
    ypred <- sum(w * as.numeric(x[i, ])) %>% phi_heavi
    # update em w
    delta_w <- eta * (y[i] - ypred) * as.numeric(x[i, ])
    #nota: x[i,] sera multiplicado como matriz (dot product)
    w <- w + delta_w
    ypreds[i] <- ypred # salva predicao atual
  }
  print(paste("Weights: ",w))
  return(ypreds)
}

train_df <- iris[1:100, c(1, 2, 5)]
train_df[, 4] <- -1
train_df[train_df[, 3] == "setosa", 4] <- 1
names(train_df) <- c("s.len", "s.wid", "species","target")
head(train_df)


x_features <- train_df[, c(1, 2)]
y_target <- train_df[, 4]

y_preds <- mark_i(x_features, y_target, 0.05)

table(y_preds,train_df$target)