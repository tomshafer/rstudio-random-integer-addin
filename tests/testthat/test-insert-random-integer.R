
test_that("dummy addin test", {
  expect_error(
    insert_random_integer(seed = "8da68ac"),
    "RStudio not running"
  )
})
