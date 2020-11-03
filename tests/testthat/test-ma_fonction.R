context("Testing ma_function()")

?test_that

testthat::test_that(desc = "check outputs",
                    code =
{
  testthat::expect_length(ma_function(1:3), 1)    # Length of the output
  testthat::expect_equal(ma_function(1:3), 2)     # Value of the output
  testthat::expect_error(ma_function(c(1:3, NA))) # Check for error if NA
  testthat::expect_equal(ma_function(c(1:3, NA), na_rm = TRUE), 2) # Check for by-passing error if na_rm = TRUE
})

