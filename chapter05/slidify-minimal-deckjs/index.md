---
framework: deckjs
deckjs: {theme: web-2.0}
highlighter: highlight.js
hitheme    : solarized_light
widgets    : [mathjax]
mode : standalone
---

# はじめての<br/>slidify & deckjs

## @kohske

---

## 平均とは
 
- \(\frac{1}{n}\sum_{i}x_i\) ということです。

### 乱数の生成

10000個の正規乱数を生成して平均値を求めます。


```r
mean(rnorm(10000))
```

```
## [1] -0.01131
```


### ヒストグラム

正規乱数をヒストグラムとカーブフィッティングにより可視化します。

<img src="assets/fig/fig-01.png" title="plot of chunk fig-01" alt="plot of chunk fig-01" style="display: block; margin: auto;" />

