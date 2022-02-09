
test_that("dummy addin test", {
  expect_error(
    insert_random_set_seed(seed = "8da68ac"),
    "RStudio not running"
  )
})
