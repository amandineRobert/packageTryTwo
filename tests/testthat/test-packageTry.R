library(testthat)

context("number addition")
source("~/packageTry/R/packageTry.R")


test_that("Addition works", {

  number <- addme(5, 5)

  expect_equal( number, equals(10) )
  expect_equal( number, is_a("numeric") )
  expect_error(4 + "a", "YOU NEED NUMBER")
  expect_equal(number, 10)
})

test_that("Arguments must be numerics", {
  expect_that( addme(1, "a"), throws_error("YOU NEED NUMBER") )
})

test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})
