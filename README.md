
<!-- README.md is generated from README.Rmd. Please edit that file -->

# packageTry

<!-- badges: start -->

[![Travis build
status](https://travis-ci.org/amandineRobert/packageTryTwo.svg?branch=master)](https://travis-ci.org/amandineRobert/packageTryTwo)
<!-- badges: end -->

The goal of packageTry is to train a beginner with RStudio, thanks to
basic functions

## Installation

You can install the released version of packageTry from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("packageTry")
```

You can install the package from GitLab.

``` r
devtools::install_git("https://gitlab.com/AmandineR/packageTryTwo")
```

And the development version from [GitHub](https://github.com/) with:
<https://github.com/amandineRobert/packageTryTwo.git>

``` r
# install.packages("devtools")
devtools::install_github("amandineRobert/packageTryTwo")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(packageTry)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub\!
