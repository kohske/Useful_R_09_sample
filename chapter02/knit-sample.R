
## ------------------------------------------------------------------------
set.seed(42)
x <- rnorm(10000)
mean(x)


## ----knit-sample-fig-01, fig.height = 1.8, echo=F------------------------
par(mar=c(2.5, 2.5, 1.5, 1))
hist(x, probability = TRUE)
curve(dnorm(x), add=TRUE)


