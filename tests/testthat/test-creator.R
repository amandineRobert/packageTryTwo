library(testthat)

context("create words group")
source("~/packageTry/R/creator.R")


test_that("Addition of words works", {

  sentence <- creator("Hello", "World")

  expect_equal( sentence, equals("Hello World") )
  expect_equal( sentence, equals("hello world") )
  expect_equal( TRUE, is.character(sentence) )
  expect_error("Hello" + 5, "YOU NEED CHARACTERS")

})
test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})
