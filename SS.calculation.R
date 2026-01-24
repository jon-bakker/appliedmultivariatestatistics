SS.calculation <- function(x, variables) {
  require(tidyverse)
  n <- nrow(x)
  x |>
    select(all_of(variables)) |>
    dist() |>
    crossprod() / n
}
