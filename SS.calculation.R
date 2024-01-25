SS.calculation <- function(x, variables) {
  n <- nrow(x)
  x %>%
    dplyr::select(any_of(variables)) %>%
    dist() %>%
    `^`(2) %>%
    sum() / n
}