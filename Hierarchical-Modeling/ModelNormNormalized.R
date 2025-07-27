
jcode <- "
model {
  for (i in 1:N) {
    mortality_rate[i] ~ dpois(lambda[i])
    log(lambda[i]) <- mu[region_id[i]] + beta[region_id[i]] * (year_id[i] - mean_year)
  }

  for (s in 1:n_region) {
    mu[s] ~ dnorm(mu_alpha, 0.001)
    beta[s] ~ dnorm(mu_beta, 0.001)
  }
  mu_alpha ~ dnorm(0, 0.001) 
  mu_beta ~ dnorm(0, 0.001) 
  
  mean_year <- (n_year + 1) / 2
}
"