library(ggplot2)

sigmoid <- function(z) {
  return(1.5*(exp(-z))/(1 + 1.5(exp(-z)))
}

ggplot(data.frame(x = c(-4, 4)), aes(x = x)) +
  stat_function(fun = sigmoid, geom = "line") +
  xlab("z") +
  ylab("Sigmoid(z)") +
  scale_y_continuous(breaks = c(0, 0.5, 1)) +
  ggtitle("Sigmoid Function")
