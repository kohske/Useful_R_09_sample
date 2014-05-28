# knitrで日本語

Mac + UTF8です。次のコマンドでHTMLレポートを作成できます。


```r
library(knitr)
knit2html("mac-utf8.Rmd")
```



```r
a <- "ざわ・・・"
paste(rep(a, 4), collapse=" ")
```

```
## [1] "ざわ・・・ ざわ・・・ ざわ・・・ ざわ・・・"
```

