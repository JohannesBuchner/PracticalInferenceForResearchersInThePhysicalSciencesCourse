data {
  int<lower=0> J;
  real y[J];
  real<lower=0> sigma[J];
}

parameters {
  real mu;
  real<lower=0> tau;
  real theta_prime[J];
}

transformed parameters {
  real theta[J];

  for (j in 1:J)
    theta[j] = mu + tau * theta_prime[j];
}

model {
  mu ~ normal(0, 5);
  tau ~ cauchy(0, 5);

  theta_prime ~ normal(0, 1);
  y ~ normal(theta, sigma);
}
