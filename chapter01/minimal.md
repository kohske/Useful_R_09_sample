# はじめてのknitr

10000個の正規乱数の平均値です。


```r
set.seed(42)
x <- rnorm(10000)
mean(x)
```

```
## [1] -0.01131
```


分散は1.0123です。


```r
par(mar=c(3, 3, 1, 1))
hist(x, probability = TRUE)
curve(dnorm(x), add=TRUE)
```

![plot of chunk minimal-plot-rmd](figure/minimal-plot-rmd.png) 

