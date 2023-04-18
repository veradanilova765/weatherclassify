

#testing inputs

testthat::test_that("parameter only accepts appropriate values", {
  expect_error(convert_temp("a","c2f"))
  expect_error(convert_temp("a","a"))
  expect_error(convert_temp(3,3))
  expect_error(convert_temp("a", 8))
})

testthat::test_that("temperature is number", {
  expect_equal(convert_temp(23,"c2f"), 73.4)
})


#testing outputs
testthat::test_that("Weather classification works for c2f", {
  expect_equal(convert_temp(23,"c2f"), 73.4)
})

testthat::test_that("Weather classification works for f2c", {
  expect_equal(convert_temp(23,"f2c"), -5)
})

testthat::test_that("Weather classification gives output error", {
  expect_error(convert_temp(23,"asdf"), "Not a proper conversion")
})

