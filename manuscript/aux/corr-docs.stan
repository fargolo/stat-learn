data {
	int<lower=1> N;
	vector[2] x[N];  
}

parameters {
	vector[2] mu;             
	real<lower=0> sigma[2];   
	real<lower=1> nu;         
	real<lower=-1, upper=1> rho;  
}

transformed parameters {
	// Covariance matrix
	cov_matrix[2] cov = [[  	sigma[1] ^ 2   	, sigma[1] * sigma[2] * rho],
                     	[sigma[1] * sigma[2] * rho,   	sigma[2] ^ 2   	]];
}

model {
  // Likelihood
  // Bivariate Student's t-distribution instead of normal for robustness
  x ~ multi_student_t(nu, mu, cov);
    
  // Noninformative priors on all parameters
  sigma ~ normal(0,100);
  mu ~ normal(0, 100);
  nu ~ gamma(2, 0.1);
}

generated quantities {
  // Random samples from the estimated bivariate t-distribution (for assessment of fit)
  vector[2] x_rand;
  x_rand = multi_student_t_rng(nu, mu, cov);
}
