quick.metaMDS <- function(dataframe, dimensions) {
  metaMDS(comm = dataframe,
          autotransform = FALSE,
          distance = "bray",
          engine = "monoMDS",
          k = dimensions,
          weakties = TRUE,
          model = "global",
          maxit = 300,
          try = 40,
          trymax = 100,
          wascores = TRUE)
}