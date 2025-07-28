# Assessing Wealth's Influence on Changes in Child Mortality Across Peru's Regions after PCV13 Implementation
An analysis of child mortality rate in Peru before and after PCV13 implementation in 2015. The dataset, sourced from RENACE (Peru's national epidemiological network),
includes geographically detailed reports of acute respiratory infections collected by the national surveillance system from 2000 to 2023. The project is primarily coded in R.


## Authors (in alphabetical order)

- **Antonio Bolea (Yale University)** - [@antoniomvega](https://github.com/antoniomvega)
- **James Clawson (University of California, Los Angeles)** - [@j-clawson](https://github.com/j-clawson)
- **Kevin Truong (University of California, Berkeley)** - [@to-ke](https://github.com/to-ke)


## Methods

### Time Series Analysis

Using negative binomial linear regression, we created continuous models via the interrupted time series method with spline smoothing
and extrapolated a post-PCV13 counterfactual. [View the results!](./'TS graphs'/)

### Hierarchical Modeling

First, we grouped the data by region and year, and then used the JAGS package in R to enable conditional event-based modeling 

### Association Rule Mining (also called Market Basket Analysis)

Using the arulez package in R and the Apriori algorithm, we interpreted and visualized potential association between a region's GDP and its rate of decline in child mortality.

## Acknowledgments

As the authors of this project, we would like to thank Stephanie Perniciaro [(LinkedIn)](https://www.linkedin.com/in/stephanie-perniciaro-72789548/) and Shelby Golden ([@sgolde13](https://github.com/sgolde13)) at the Yale School of Public Health for their mentorship and expertise 

