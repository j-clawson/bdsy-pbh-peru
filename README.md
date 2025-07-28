# Assessing Wealth's Influence on Changes in Child Mortality Across Peru's Regions after PCV13 Implementation
An analysis of child mortality rate in Peru before and after PCV13 implementation in 2015. The dataset, sourced from RENACE (Peru's national epidemiological network),
includes geographically detailed reports of acute respiratory infections collected by the national surveillance system from 2000 to 2023.

> This project was developed as part of the inaugural Big Data Summer Immersion at Yale (BDSY). Our final poster was presented during the Symposium on Big Data, Human Health, and Statistics on July 24, 2025, organized by Dr. Bhramar Mukherjee and the Yale School of Public Health (YSPH).

<br>



## Authors (in alphabetical order)

- **Antonio Bolea (Yale University)** - [@antoniomvega](https://github.com/antoniomvega)
- **James Clawson (University of California, Los Angeles)** - [@j-clawson](https://github.com/j-clawson)
- **Kevin Truong (University of California, Berkeley)** - [@to-ke](https://github.com/to-ke)

<br>


## Methods

### Time Series Analysis

Using negative binomial linear regression, we created continuous models via the interrupted time series method with spline smoothing
and extrapolated a post-PCV13 counterfactual. 

[View our Time Series results here!](TS%20graphs)
<br><br>




### Hierarchical Modeling

First, we grouped the data by region and year, and then used the JAGS package in R to enable conditional event-based modeling. This allowed us to predict child mortality trends on a
local scale, even while some poorer regions (such as Puno) may underreport deaths due to a lack of health infastructure.

[View our Hierarchical Modeling results here!](Hierarchical-Modeling/Models%20on%20Poster)
<br><br>


### Association Rule Mining (also called Market Basket Analysis)

Using the arules package in R and the Apriori algorithm, we interpreted and visualized potential associations between a region's GDP and its rate of decline in child mortality.

[View our Association Rule Mining results here!](Market%20Basket%20graphs)
<br><br><br>




## Acknowledgments

As the authors of this project, we would like to thank [Stephanie Perniciaro](https://www.linkedin.com/in/stephanie-perniciaro-72789548/) and [Shelby Golden](https://github.com/sgolde13) at the Yale School of Public Health for their mentorship and expertise throughout the research process.

We are also grateful for the support offered by [Dr. Bhramar Mukherjee](https://www.linkedin.com/in/bhramar-mukherjee-483810320/) (Associate Dean of Data Science & Data Equity), [Jackson Higginbottom](https://www.linkedin.com/in/jacksonhigg/) (YSPH Program Manager), and the rest of the 2025 BDSY team.

Finally, we acknowledge and thank the developers behind the JAGS and arules packages in R for providing the tools that enabled our analysis.
