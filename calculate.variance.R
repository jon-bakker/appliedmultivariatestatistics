calculate.variance <- function(object, value) {
  object %>%
    mutate(breakpoint = if_else(water < value, "low", "hi")) %>%
    group_by(breakpoint) %>%
    summarize(N = length(troc.terr),
              variance = sum(dist(troc.terr)^2) / N,
              mean = mean(troc.terr))
}