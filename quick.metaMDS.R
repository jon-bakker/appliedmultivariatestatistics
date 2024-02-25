quick.metaMDS <- function(dataframe, dimensions, n.try = 40) {
  require(vegan)
  metaMDS(comm = dataframe,
          autotransform = FALSE,
          distance = "bray",
          engine = "monoMDS",
          k = dimensions,
          weakties = TRUE,
          model = "global",
          maxit = 300,
          try = n.try,
          trymax = 100,
          wascores = TRUE)
}