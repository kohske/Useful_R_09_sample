# knitrで日本語

Mac + CP932 (Shift_JIS)です。次のコマンドでHTMLレポートを作成できます。

<div class="chunk" id="unnamed-chunk-1"><div class="rcode"><div class="source"><pre class="knitr r">library(knitr)
writeLines(knit2html(text = iconv(readLines("mac-CP932.Rmd"), from="CP932", to="utf8")), "mac-CP932.html")
</pre></div>
</div></div>


<div class="chunk" id="unnamed-chunk-2"><div class="rcode"><div class="source"><pre class="knitr r">a <- "ざわ・・・"
paste(rep(a, 4), collapse=" ")
</pre></div>
<div class="output"><pre class="knitr r">## [1] "ざわ・・・ ざわ・・・ ざわ・・・ ざわ・・・"
</pre></div>
</div></div>

