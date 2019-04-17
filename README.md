# ineqmeas 

Some unique inequality measures for economics inequality in R.

## Getting Started

This package has been created for my master's dissertation which is "Analysis of Spatial Distribution of Population and Income Inequality".
Gini has been the most popular way of measuring inequality but prooved to be sometimes misleading. There are other measures if you're 
interested in tails more. For example, The Palma ratio is the ratio of the richest 10% of the population’s share of gross national 
income (GNI) divided by the poorest 40%’s share.

In this first version of package, there are "Centile ratios" (where you can manually set percentiles), "Palma ratio", "Mcloone Index",
"Relative Variance" functions.



### Prerequisites

No dependencies. But you need to install "devtools" to pull packages from github on R.
```
Examples

library(devtools)
install_github("samozturk/ineqmeas1")
income <- c(100,110,120,130,100,250,300)
library(ineqmeas)
mcloone(data_vector = income)
centile(data_vector = income, top_perc = 10, bot_perc = 90)
palma(data_vector = income)
relvar(data_vector = income)

```



## Authors

* **Samet Ozturk** - *Initial work*

## License

GNU/GPL

## Acknowledgments

* relvar function seems to have some math errors.

