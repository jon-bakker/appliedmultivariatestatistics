quick.metaMDS <- function(dataframe, k, try = 40) {
  require(vegan)
  metaMDS(comm = dataframe,
          autotransform = FALSE,
          distance = "bray",
          engine = "monoMDS",
          k = k,
          weakties = TRUE,
          model = "global",
          maxit = 400,
          try = try,
          trymax = 200,
          wascores = TRUE)
}