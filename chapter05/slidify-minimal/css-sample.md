---
title       : CSSによるスタイル指定
author      : "@kohske"
framework   : io2012
mode        : standalone
--- #p1

<style>
  #p1 code {color: white; background: black;}
  #p2 code {border: dotted 3px;}
</style>

## <s>イリス</s>アイリスの解析

```r
kable(head(iris, 10))
```



| Sepal.Length| Sepal.Width| Petal.Length| Petal.Width|Species |
|------------:|-----------:|------------:|-----------:|:-------|
|          5.1|         3.5|          1.4|         0.2|setosa  |
|          4.9|         3.0|          1.4|         0.2|setosa  |
|          4.7|         3.2|          1.3|         0.2|setosa  |
|          4.6|         3.1|          1.5|         0.2|setosa  |
|          5.0|         3.6|          1.4|         0.2|setosa  |
|          5.4|         3.9|          1.7|         0.4|setosa  |
|          4.6|         3.4|          1.4|         0.3|setosa  |
|          5.0|         3.4|          1.5|         0.2|setosa  |
|          4.4|         2.9|          1.4|         0.2|setosa  |
|          4.9|         3.1|          1.5|         0.1|setosa  |

--- #p2
## 重回帰

```r
coef(summary(lm(Sepal.Length~., iris)))
```

```
##                   Estimate Std. Error t value  Pr(>|t|)
## (Intercept)         2.1713    0.27979   7.760 1.430e-12
## Sepal.Width         0.4959    0.08607   5.761 4.868e-08
## Petal.Length        0.8292    0.06853  12.101 1.074e-23
## Petal.Width        -0.3152    0.15120  -2.084 3.889e-02
## Speciesversicolor  -0.7236    0.24017  -3.013 3.060e-03
## Speciesvirginica   -1.0235    0.33373  -3.067 2.584e-03
```

