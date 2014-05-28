


# HTMLレポートでアニメーション

scianimatorライブラリを使ってアニメーションを表示しています。


<div class="scianimator">
<div id="norm_dist_fig" style="display: inline-block;">
</div>
</div>
<script type="text/javascript">
  (function($) {
    $(document).ready(function() {
      var imgs = Array(6);
      for (i=0; ; i++) {
        if (i == imgs.length) break;
        imgs[i] = "figure/norm-dist-fig" + (i + 1) + ".png";
      }
      $("#norm_dist_fig").scianimator({
          "images": imgs,
          "delay": 100,
          "controls": ["first", "previous", "play", "next", "last", "loop", "speed"],
      });
      $("#norm_dist_fig").scianimator("play");
    });
  })(jQuery);
</script>


サンプルサイズが大きいほど、理論上の分布に一致します。
例えば平均は理論値は0ですが、サンプル平均は


```r
sapply(10^(1:6), function(x) mean(rnorm(x)))
```

```
## [1] -0.3389148 -0.1740080  0.0090273 -0.0078860  0.0005018  0.0001229
```


となります。
