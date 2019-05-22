library(testthat)

context("create words group")
source("~/packageTry/R/creator.R")


test_that("Concatenation of words works", {

  sentence <- creator("Hello", "World", ignore.case = TRUE)

  expect_equal( sentence, "Hello World" )
  expect_equal( is.character(sentence), TRUE )
  expect_error(creator("Hello", 5), "YOU NEED CHARACTERS")

})

