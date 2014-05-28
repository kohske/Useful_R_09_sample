---
title       : slidify + rCharts = \(\infty\)
author      : "@kohske"
framework   : io2012
widgets     : [mathjax]
mode        : draft
---



## rChartsのプロットを埋め込む


```r
hair_eye = as.data.frame(HairEyeColor)
p <- rPlot(Freq ~ Hair | Eye, color = 'Eye', data = hair_eye, type = 'bar')
p$show("iframesrc", cdn = TRUE)
```

<iframe srcdoc=' &lt;!doctype HTML&gt;
&lt;meta charset = &#039;utf-8&#039;&gt;
&lt;html&gt;
  &lt;head&gt;
    
    &lt;script src=&#039;http://ramnathv.github.io/rCharts/libraries/widgets/polycharts/js/polychart2.standalone.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    
    &lt;style&gt;
    .rChart {
      display: block;
      margin-left: auto; 
      margin-right: auto;
      width: 800px;
      height: 400px;
    }  
    &lt;/style&gt;
    
  &lt;/head&gt;
  &lt;body&gt;
    &lt;div id=&#039;chart8c37000be36&#039; class=&#039;rChart polycharts&#039;&gt;&lt;/div&gt;  
    
    &lt;script type=&#039;text/javascript&#039;&gt;
    var chartParams = {
 &quot;dom&quot;: &quot;chart8c37000be36&quot;,
&quot;width&quot;:    800,
&quot;height&quot;:    400,
&quot;layers&quot;: [
 {
 &quot;x&quot;: &quot;Hair&quot;,
&quot;y&quot;: &quot;Freq&quot;,
&quot;data&quot;: {
 &quot;Hair&quot;: [ &quot;Black&quot;, &quot;Brown&quot;, &quot;Red&quot;, &quot;Blond&quot;, &quot;Black&quot;, &quot;Brown&quot;, &quot;Red&quot;, &quot;Blond&quot;, &quot;Black&quot;, &quot;Brown&quot;, &quot;Red&quot;, &quot;Blond&quot;, &quot;Black&quot;, &quot;Brown&quot;, &quot;Red&quot;, &quot;Blond&quot;, &quot;Black&quot;, &quot;Brown&quot;, &quot;Red&quot;, &quot;Blond&quot;, &quot;Black&quot;, &quot;Brown&quot;, &quot;Red&quot;, &quot;Blond&quot;, &quot;Black&quot;, &quot;Brown&quot;, &quot;Red&quot;, &quot;Blond&quot;, &quot;Black&quot;, &quot;Brown&quot;, &quot;Red&quot;, &quot;Blond&quot; ],
&quot;Eye&quot;: [ &quot;Brown&quot;, &quot;Brown&quot;, &quot;Brown&quot;, &quot;Brown&quot;, &quot;Blue&quot;, &quot;Blue&quot;, &quot;Blue&quot;, &quot;Blue&quot;, &quot;Hazel&quot;, &quot;Hazel&quot;, &quot;Hazel&quot;, &quot;Hazel&quot;, &quot;Green&quot;, &quot;Green&quot;, &quot;Green&quot;, &quot;Green&quot;, &quot;Brown&quot;, &quot;Brown&quot;, &quot;Brown&quot;, &quot;Brown&quot;, &quot;Blue&quot;, &quot;Blue&quot;, &quot;Blue&quot;, &quot;Blue&quot;, &quot;Hazel&quot;, &quot;Hazel&quot;, &quot;Hazel&quot;, &quot;Hazel&quot;, &quot;Green&quot;, &quot;Green&quot;, &quot;Green&quot;, &quot;Green&quot; ],
&quot;Sex&quot;: [ &quot;Male&quot;, &quot;Male&quot;, &quot;Male&quot;, &quot;Male&quot;, &quot;Male&quot;, &quot;Male&quot;, &quot;Male&quot;, &quot;Male&quot;, &quot;Male&quot;, &quot;Male&quot;, &quot;Male&quot;, &quot;Male&quot;, &quot;Male&quot;, &quot;Male&quot;, &quot;Male&quot;, &quot;Male&quot;, &quot;Female&quot;, &quot;Female&quot;, &quot;Female&quot;, &quot;Female&quot;, &quot;Female&quot;, &quot;Female&quot;, &quot;Female&quot;, &quot;Female&quot;, &quot;Female&quot;, &quot;Female&quot;, &quot;Female&quot;, &quot;Female&quot;, &quot;Female&quot;, &quot;Female&quot;, &quot;Female&quot;, &quot;Female&quot; ],
&quot;Freq&quot;: [     32,     53,     10,      3,     11,     50,     10,     30,     10,     25,      7,      5,      3,     15,      7,      8,     36,     66,     16,      4,      9,     34,      7,     64,      5,     29,      7,      5,      2,     14,      7,      8 ] 
},
&quot;facet&quot;: &quot;Eye&quot;,
&quot;color&quot;: &quot;Eye&quot;,
&quot;type&quot;: &quot;bar&quot; 
} 
],
&quot;facet&quot;: {
 &quot;type&quot;: &quot;wrap&quot;,
&quot;var&quot;: &quot;Eye&quot; 
},
&quot;guides&quot;: [],
&quot;coord&quot;: [],
&quot;id&quot;: &quot;chart8c37000be36&quot; 
}
    _.each(chartParams.layers, function(el){
        el.data = polyjs.data(el.data)
    })
    var graph_chart8c37000be36 = polyjs.chart(chartParams);
&lt;/script&gt;
    
  &lt;/body&gt;
&lt;/html&gt; '></iframe>



