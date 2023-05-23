scree <- function(hclust.obj, max.size = 12) {
  temp <- with(hclust.obj, cbind(height, merge))
  colnames(temp) <- c("Height", "JoinsThis", "WithThis")
  plot(x = max.size:1, 
       y = temp[(nrow(temp)-(max.size-1)):nrow(temp), 1],
       xlab = "Number of groups", ylab = "Height", main = hclust.obj$call, type = "b")
  tail(temp, max.size)
}
