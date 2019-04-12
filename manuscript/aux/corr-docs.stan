data {
	int<lower=1> N;
	vector[2] x[N];  
}

parameters {
	vector[2] mu;             
	real<lower=0> sigma[2];   
	real<lower=-1, upper=1> rho;  
}

transformed parameters {
	// Matriz de covariancias
	cov_matrix[2] cov = [[  	sigma[1] ^ 2   	, sigma[1] * sigma[2] * rho],
                     	[sigma[1] * sigma[2] * rho,   	sigma[2] ^ 2   	]];
}

model {
  // Priors
  rho ~ normal(0.1,1); //Correlacao
  // hale 
  sigma[1] ~ normal(5,2); 
  mu[1] ~ normal(60, 3);
  // log_docs
  sigma[2] ~ normal(1,10);
  mu[2] ~ normal(0, 2);
  
  // Likelihood - Bivariate normal
  x ~ multi_normal_lpdf(mu, cov);
    
}

generated quantities {
  // Amostras com pares ordenados
  vector[2] x_rand;
  x_rand = multi_normal_rng(mu, cov);
}
