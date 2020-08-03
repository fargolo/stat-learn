library(ggplot2)
set.seed(2600)

n_obs <- 400

a <- rnorm(n=n_obs, sd =1, mean=0)
b <- rnorm(n=n_obs, sd=1, mean=0.6)

likel <- function(n,x,mu,sigma){
  l_val <- (-n/2)*log(2*pi*sigma^2) - (1/2*sigma^2)*sum((x - mu)^2)
  return(-l_val) # multiplica(-1)
}

log_norm <- function(n,mu,sigma){
  require(magrittr)
  unif_dist <- 1/runif(n = n, min = -1,max = 1)
  l_val <- dnorm(x=unif_dist,mean = 0,sd = 1,log=T)
  l_val <- car::recode(l_val,"-Inf:-1000=-1000") %>% sum
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
    s1_lik <- likel(n=n_obs,x=obs,mu=s1_mu,sigma=s_sigma) + 
      # log do prior é normalizado por 1000 
      log_norm(n=10000,mu=0,sigma=1)/1000 
    
    # Rejeita diferenças maiores que 5, assumindo o valor no estado anterior
    if(s1_lik - s0_lik > 5)  
      s1_mu <- s0_mu 
    sample[i,] <- c(s1_mu,s_sigma) # Salva
  }
  return(sample[1001:iter,1])
}

posterior_a <- mc_chain(obs = a,iter = 4000)
posterior_b <- mc_chain(obs = b,iter = 4000)

posteriors_data <- data.frame(post_a=posterior_a, post_b=posterior_b)

ggplot(data = data.frame(posteriors_data), aes(x=posterior_a)) +
  geom_histogram(aes(y=..density..),color = "light green", alpha=0.1) +
  geom_histogram(aes(x=posterior_b, y=..density..), alpha=0.1, color="dark green") +
  theme_hc(style = "darkunica") +
  geom_density(aes(x=(posterior_b - posterior_a)), color="green") +
  xlab("Posteriors") + ylab("Density") +
  geom_text(label="P(A|X) \n μ ~ 0.08",color="white",x=-0.2,y=1)+
  geom_text(label="P(B|X) \n μ ~ 0.57",color="white",x=1,y=1)+
  geom_text(label="Posterior of difference \n μ ~ 0.49",color="white",x=0.3,y=0.3)
  
ggsave("images/chap5-posterior_diff_mcmc.png",type="cairo-png",units="cm",width = 15,height = 10,dpi=300)  

mean(sample[1001:3000,1])
mean(sample[1001:3000,2])