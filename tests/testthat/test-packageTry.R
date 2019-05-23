context("number addition")
library(testthat)
#source("~/packageTry/R/packageTry.R")


test_that("Addition works", {

  number <- addme(5, 5)

  expect_equal( number, 10 )
  expect_equal( typeof(number), "double" )
  expect_error(addme(4, "a"))
})

test_that("Arguments must be numerics", {
  expect_that( addme(1, "a"), throws_error("YOU NEED NUMBER") )
})

