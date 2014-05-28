# rCharts featuring morris.js




<!-- プロットのスタイル指定 -->
<style>
.rChart { border: solid 2px; margin: auto; width: 800px; height: 600px;}
</style>

## 2系列の時系列プロット

```r
d <- data.frame(x = paste(2001:2010), y1 = runif(10), y2 = runif(10))
p <- mPlot(x = "x", y = c("y1", "y2"), data = d, type = "Line", labels = c("系列1", "系列2"))
o0(p)
```

<link rel='stylesheet' href=http://cdn.oesmith.co.uk/morris-0.4.2.min.css>
<script type='text/javascript' src=http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js></script>
<script type='text/javascript' src=http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js></script>
<script type='text/javascript' src=http://cdn.oesmith.co.uk/morris-0.4.2.min.js></script>
<div id = 'chart88c16aac574' class = 'rChart morris'></div>
<script type='text/javascript'>
    var chartParams = {
 "element": "chart88c16aac574",
"width":            800,
"height":            600,
"xkey": "x",
"ykeys": [
 "y1",
"y2" 
],
"data": [
 {
 "x": "2001",
"y1": 0.9148060434964,
"y2": 0.4577417762484 
},
{
 "x": "2002",
"y1": 0.9370754132979,
"y2": 0.7191122516524 
},
{
 "x": "2003",
"y1": 0.2861395347863,
"y2": 0.9346722471528 
},
{
 "x": "2004",
"y1": 0.8304476260673,
"y2": 0.2554288243409 
},
{
 "x": "2005",
"y1": 0.641745518893,
"y2": 0.4622928225435 
},
{
 "x": "2006",
"y1": 0.5190959491301,
"y2": 0.9400145227555 
},
{
 "x": "2007",
"y1": 0.7365883146413,
"y2": 0.9782264283858 
},
{
 "x": "2008",
"y1": 0.1346665972378,
"y2": 0.1174873616546 
},
{
 "x": "2009",
"y1": 0.6569922904018,
"y2": 0.474997081561 
},
{
 "x": "2010",
"y1": 0.7050647840369,
"y2": 0.560332746245 
} 
],
"labels": [ "系列1", "系列2" ],
"id": "chart88c16aac574" 
},
      chartType = "Line"
    new Morris[chartType](chartParams)
</script>


## 3系列の時系列エリアチャート

```r
d <- data.frame(x = paste(2001:2010), y1 = runif(10), y2 = runif(10), y3 = runif(10))
p <- mPlot(x = "x", y = c("y1", "y2", "y3"), data = d, type = "Area", smooth=FALSE, pointSize = 10, lineWidth = 5)
o(p)
```


<div id = 'chart88c597372d4' class = 'rChart morris'></div>
<script type='text/javascript'>
    var chartParams = {
 "element": "chart88c597372d4",
"width":            800,
"height":            600,
"xkey": "x",
"ykeys": [
 "y1",
"y2",
"y3" 
],
"data": [
 {
 "x": "2001",
"y1": 0.9040313872974,
"y2": 0.7375956177711,
"y3": 0.3795592405368 
},
{
 "x": "2002",
"y1": 0.1387101677246,
"y2": 0.8110551412683,
"y3": 0.4357715849765 
},
{
 "x": "2003",
"y1": 0.9888917289209,
"y2": 0.3881082828157,
"y3": 0.03743103286251 
},
{
 "x": "2004",
"y1": 0.9466682325583,
"y2": 0.6851697294042,
"y3": 0.9735399137717 
},
{
 "x": "2005",
"y1": 0.08243755809963,
"y2": 0.003948338795453,
"y3": 0.4317512488924 
},
{
 "x": "2006",
"y1": 0.5142117843498,
"y2": 0.8329160802532,
"y3": 0.9575765966438 
},
{
 "x": "2007",
"y1": 0.3902034671046,
"y2": 0.007334146881476,
"y3": 0.8877549055032 
},
{
 "x": "2008",
"y1": 0.9057381309103,
"y2": 0.207658972824,
"y3": 0.6399787694681 
},
{
 "x": "2009",
"y1": 0.4469696281012,
"y2": 0.906601407798,
"y3": 0.970966610359 
},
{
 "x": "2010",
"y1": 0.8360042599961,
"y2": 0.6117786434479,
"y3": 0.6188382073306 
} 
],
"smooth": false,
"pointSize":             10,
"lineWidth":              5,
"id": "chart88c597372d4",
"labels": [ "y1", "y2", "y3" ] 
},
      chartType = "Area"
    new Morris[chartType](chartParams)
</script>


## 棒グラフ

```r
d <- data.frame(x = paste(2001:2010), y1 = runif(10), y2 = runif(10), y3 = runif(10))
p <- mPlot(x = "x", y = c("y1", "y2", "y3"), data = d, type = "Bar", barColors = c("red", "green", "blue"))
o(p)
```


<div id = 'chart88c26af4623' class = 'rChart morris'></div>
<script type='text/javascript'>
    var chartParams = {
 "element": "chart88c26af4623",
"width":            800,
"height":            600,
"xkey": "x",
"ykeys": [
 "y1",
"y2",
"y3" 
],
"data": [
 {
 "x": "2001",
"y1": 0.3334272112697,
"y2": 0.6756072745193,
"y3": 0.04298879601993 
},
{
 "x": "2002",
"y1": 0.3467482482083,
"y2": 0.982817197917,
"y3": 0.140479094116 
},
{
 "x": "2003",
"y1": 0.3984854114242,
"y2": 0.759544267552,
"y3": 0.2163854150567 
},
{
 "x": "2004",
"y1": 0.7846927756909,
"y2": 0.5664884240832,
"y3": 0.4793985642027 
},
{
 "x": "2005",
"y1": 0.03893649112433,
"y2": 0.8496897185687,
"y3": 0.1974103422835 
},
{
 "x": "2006",
"y1": 0.748795386171,
"y2": 0.1894739354029,
"y3": 0.7193558376748 
},
{
 "x": "2007",
"y1": 0.6772768301889,
"y2": 0.2712866147049,
"y3": 0.007884738733992 
},
{
 "x": "2008",
"y1": 0.1712643303908,
"y2": 0.8281584852375,
"y3": 0.3754899646156 
},
{
 "x": "2009",
"y1": 0.2610879638232,
"y2": 0.6932048203889,
"y3": 0.5144077083096 
},
{
 "x": "2010",
"y1": 0.514412934659,
"y2": 0.240544739645,
"y3": 0.001570554217324 
} 
],
"barColors": [ "red", "green", "blue" ],
"id": "chart88c26af4623",
"labels": [ "y1", "y2", "y3" ] 
},
      chartType = "Bar"
    new Morris[chartType](chartParams)
</script>


## ドーナツチャート


```r
d <- data.frame(label = c("とらドラ！", "化物語", "俺の妹がこんなに可愛いわけがない", "IS"), value = c(193, 162, 97, 88))
p <- mPlot(x = NULL, y = NULL, data = d, type = "Donut", formatter = "#! function (y) { return(y+'人が萌えた'); } !#" )
o(p)
```

```
## The following `from` values were not present in `x`: x
```


<div id = 'chart88c773d9c90' class = 'rChart morris'></div>
<script type='text/javascript'>
    var chartParams = {
 "element": "chart88c773d9c90",
"width":            800,
"height":            600,
"ykeys": [
 "freq" 
],
"data": [
 {
 "label": "IS",
"value":             88,
"freq": 1 
},
{
 "label": "とらドラ！",
"value":            193,
"freq": 1 
},
{
 "label": "俺の妹がこんなに可愛いわけがない",
"value":             97,
"freq": 1 
},
{
 "label": "化物語",
"value":            162,
"freq": 1 
} 
],
"formatter":  function (y) { return(y+'人が萌えた'); } ,
"id": "chart88c773d9c90",
"labels": "freq" 
},
      chartType = "Donut"
    new Morris[chartType](chartParams)
</script>

