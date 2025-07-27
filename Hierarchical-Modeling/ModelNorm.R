
jcode <- "
model {
  for (i in 1:N) {
    mortalities[i] ~ dpois(lambda[i])
    log(lambda[i]) <- mu[region_id[i]] + beta[region_id[i]] * (year_id[i] - mean_year)
  }

  for (s in 1:n_region) {
    mu[s] ~ dnorm(0, 0.001)
    beta[s] ~ dnorm(0, 0.001)
  }

  mean_year <- (n_year + 1) / 2
}
"