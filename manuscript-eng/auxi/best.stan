data {
  int<lower=0> N;
  vector[N] y_1;
  vector[N] y_2;
}
parameters {
  real mu_1;
  real mu_2;
  real sigma;
  real<lower=0, upper=1> df;
  real<lower=0, upper=1000> lambda;
}
model {
  //priors
  mu_1 ~ normal(0, 1);
  mu_2 ~ normal(0, 1);
  sigma ~ normal(0, 1);
  df ~ uniform(0,1);
  lambda ~ exponential(df);
 
  //likelihood
  for (n in 1:N){
    y_1[n] ~ student_t(lambda, mu_1, sigma);
    y_2[n] ~ student_t(lambda, mu_2, sigma);
  }
}
generated quantities{
  real mudiff;
  real cohenD;
 
  mudiff = mu_1 - mu_2;
  cohenD = mudiff/sigma;
 
}

