set.seed(2600)

a <- rnorm(n=n_obs, sd =1, mean=0)
b <- rnorm(n=n_obs, sd=1, mean=0.6)

likel <- function(n,x,mu,sigma){
  l_val <- (-n/2)*log(2*pi*sigma^2) - (1/2*sigma^2)*sum((x - mu)^2)
  return(-l_val) # multiplica(-1)
}

log_norm <- function(n,mu,sigma){
  require(magrittr)
  unif_dist <- 1/runif(n = n, min = -1,max = 1)
  l_val <- log(dnorm(x=unif_dist,mean = 0,sd = 1))
  l_val <- car::recode(l_val,"-Inf=-1000") %>% sum
  return(-l_val)
}

# chain
mc_chain <- function(obs,iter=4000,n_obs=length(obs)){
  # seeds e objetos
  sample <- matrix(nrow = iter, ncol = 2)
  s1_mu <- rnorm(n=1,mean=0) # media inicial
  s_sigma <- 1 # variancia = 1
  s1_lik <- 2000
  for (i in 1:iter){
    # Salva estado
    s0_mu <- s1_mu
    s0_lik <- s1_lik
    
    # Realiza um passo (random walk)
    s1_mu <- s1_mu + rnorm(n=1,mean = 0, sd=0.5)
    s1_lik <- log_lik(n=n_obs,x=obs,mu=s1_mu,sigma=s_sigma) + 
      # log do prior é normalizado por 1000 
      log_norm(n=10000,mu=0,sigma=1)/1000 
    
    # Rejeita diferenças maiores que 5, assumindo o valor no estado anterior
    if(s1_lik - s0_lik > 5)  
      s1_mu <- s0_mu 
    sample[i,] <- c(s1_mu,s_sigma) # Salva
  }
  return(sample[1001:iter,1])
}


mean(sample[1001:3000,1])
mean(sample[1001:3000,2])