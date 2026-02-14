quick.metaMDS <- function(dataframe, k, try = 40) {
  require(vegan)
  metaMDS(comm = dataframe,
          autotransform = FALSE,
          distance = "bray",
          engine = "monoMDS",
          k = k,
          weakties = TRUE,
          model = "global",
          maxit = 300,
          try = try,
          trymax = 100,
          wascores = TRUE)
}