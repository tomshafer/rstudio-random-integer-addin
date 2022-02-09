
test_that("can query random.org", {
  repro_rand_int <- get_random_integer(seed = "8da68ac")
  expect_equal(repro_rand_int, 45960541)
})
