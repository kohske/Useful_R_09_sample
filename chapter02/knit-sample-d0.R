

set.seed(42)
x <- rnorm(10000)
mean(x)



par(mar=c(2.5, 2.5, 1.5, 1))
hist(x, probability = TRUE)
curve(dnorm(x), add=TRUE)


