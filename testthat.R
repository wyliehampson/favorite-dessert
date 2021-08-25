library(testthat)

getPercent <- function(value, pct, metric = "percent") {
  testthat::expect_gte(pct, 0)
  result <- dplyr::case_when(
    metric == "percent" ~ value * (pct / 100),
    metric == "permile" ~ value * (pct / 1000)
  )
}

result <- getpercent( 10, -25 ) 
print(result)

# https://testthat.r-lib.org/reference/comparison-expectations.html
