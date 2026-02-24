simper.tidy <- function(simper.summary.object, comparisons) {
  simper.results <- c()
  
  for(i in 1:length(comparisons)) {
    require(tidyverse)
    temp <- simper.summary.object[as.character(comparisons[i])] |>
      as.data.frame()
    colnames(temp) <- gsub(
      paste(comparisons[i],".", sep = ""), "", colnames(temp))
    temp <- temp |>
      mutate(Comparison = comparisons[i],
             Position = row_number()) |>
      rownames_to_column(var = "Species")
    simper.results <- rbind(simper.results, temp)
  }
  simper.results
}