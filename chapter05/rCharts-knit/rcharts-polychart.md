# rCharts featuring Polychart




<!-- プロットのスタイル指定 -->
<style>
.rChart { border: solid 2px; margin: auto; width: 800px;}
</style>

## ファセットと色の指定

```r
o0(rPlot( mpg~qsec | am+vs, data=mtcars, color = "cyl", type="point"))
```

<script type='text/javascript' src=http://ramnathv.github.io/rCharts/libraries/widgets/polycharts/js/polychart2.standalone.js></script>
<div id = 'chart88c7259748a' class = 'rChart polycharts'></div>
<script type='text/javascript'>
    var chartParams = {
 "dom": "chart88c7259748a",
"width":    800,
"height":    600,
"layers": [
 {
 "x": "qsec",
"y": "mpg",
"data": {
 "mpg": [     21,     21,   22.8,   21.4,   18.7,   18.1,   14.3,   24.4,   22.8,   19.2,   17.8,   16.4,   17.3,   15.2,   10.4,   10.4,   14.7,   32.4,   30.4,   33.9,   21.5,   15.5,   15.2,   13.3,   19.2,   27.3,     26,   30.4,   15.8,   19.7,     15,   21.4 ],
"cyl": [      6,      6,      4,      6,      8,      6,      8,      4,      4,      6,      6,      8,      8,      8,      8,      8,      8,      4,      4,      4,      4,      8,      8,      8,      8,      4,      4,      4,      8,      6,      8,      4 ],
"disp": [    160,    160,    108,    258,    360,    225,    360,  146.7,  140.8,  167.6,  167.6,  275.8,  275.8,  275.8,    472,    460,    440,   78.7,   75.7,   71.1,  120.1,    318,    304,    350,    400,     79,  120.3,   95.1,    351,    145,    301,    121 ],
"hp": [    110,    110,     93,    110,    175,    105,    245,     62,     95,    123,    123,    180,    180,    180,    205,    215,    230,     66,     52,     65,     97,    150,    150,    245,    175,     66,     91,    113,    264,    175,    335,    109 ],
"drat": [    3.9,    3.9,   3.85,   3.08,   3.15,   2.76,   3.21,   3.69,   3.92,   3.92,   3.92,   3.07,   3.07,   3.07,   2.93,      3,   3.23,   4.08,   4.93,   4.22,    3.7,   2.76,   3.15,   3.73,   3.08,   4.08,   4.43,   3.77,   4.22,   3.62,   3.54,   4.11 ],
"wt": [   2.62,  2.875,   2.32,  3.215,   3.44,   3.46,   3.57,   3.19,   3.15,   3.44,   3.44,   4.07,   3.73,   3.78,   5.25,  5.424,  5.345,    2.2,  1.615,  1.835,  2.465,   3.52,  3.435,   3.84,  3.845,  1.935,   2.14,  1.513,   3.17,   2.77,   3.57,   2.78 ],
"qsec": [  16.46,  17.02,  18.61,  19.44,  17.02,  20.22,  15.84,     20,   22.9,   18.3,   18.9,   17.4,   17.6,     18,  17.98,  17.82,  17.42,  19.47,  18.52,   19.9,  20.01,  16.87,   17.3,  15.41,  17.05,   18.9,   16.7,   16.9,   14.5,   15.5,   14.6,   18.6 ],
"vs": [      0,      0,      1,      1,      0,      1,      0,      1,      1,      1,      1,      0,      0,      0,      0,      0,      0,      1,      1,      1,      1,      0,      0,      0,      0,      1,      0,      1,      0,      0,      0,      1 ],
"am": [      1,      1,      1,      0,      0,      0,      0,      0,      0,      0,      0,      0,      0,      0,      0,      0,      0,      1,      1,      1,      0,      0,      0,      0,      0,      1,      1,      1,      1,      1,      1,      1 ],
"gear": [      4,      4,      4,      3,      3,      3,      3,      4,      4,      4,      4,      3,      3,      3,      3,      3,      3,      4,      4,      4,      3,      3,      3,      3,      3,      4,      5,      5,      5,      5,      5,      4 ],
"carb": [      4,      4,      1,      1,      2,      1,      4,      2,      2,      4,      4,      3,      3,      3,      4,      4,      4,      1,      2,      1,      1,      2,      2,      4,      2,      1,      2,      2,      4,      6,      8,      2 ] 
},
"facet": [ "am", "vs" ],
"color": "cyl",
"type": "point" 
} 
],
"facet": {
 "type": "grid",
"x": "am",
"y": "vs" 
},
"guides": [],
"coord": [],
"id": "chart88c7259748a" 
}
    _.each(chartParams.layers, function(el){
        el.data = polyjs.data(el.data)
    })
    var graph_chart88c7259748a = polyjs.chart(chartParams);
</script>


## グラフの種類の指定とポジショニングの指定

```r
hair_eye <- as.data.frame(HairEyeColor)
o(rPlot(Freq ~ Hair, color = "Eye", data = hair_eye, type = "bar", position = "dodge"))
```


<div id = 'chart88c5048ab2' class = 'rChart polycharts'></div>
<script type='text/javascript'>
    var chartParams = {
 "dom": "chart88c5048ab2",
"width":    800,
"height":    600,
"layers": [
 {
 "x": "Hair",
"y": "Freq",
"data": {
 "Hair": [ "Black", "Brown", "Red", "Blond", "Black", "Brown", "Red", "Blond", "Black", "Brown", "Red", "Blond", "Black", "Brown", "Red", "Blond", "Black", "Brown", "Red", "Blond", "Black", "Brown", "Red", "Blond", "Black", "Brown", "Red", "Blond", "Black", "Brown", "Red", "Blond" ],
"Eye": [ "Brown", "Brown", "Brown", "Brown", "Blue", "Blue", "Blue", "Blue", "Hazel", "Hazel", "Hazel", "Hazel", "Green", "Green", "Green", "Green", "Brown", "Brown", "Brown", "Brown", "Blue", "Blue", "Blue", "Blue", "Hazel", "Hazel", "Hazel", "Hazel", "Green", "Green", "Green", "Green" ],
"Sex": [ "Male", "Male", "Male", "Male", "Male", "Male", "Male", "Male", "Male", "Male", "Male", "Male", "Male", "Male", "Male", "Male", "Female", "Female", "Female", "Female", "Female", "Female", "Female", "Female", "Female", "Female", "Female", "Female", "Female", "Female", "Female", "Female" ],
"Freq": [     32,     53,     10,      3,     11,     50,     10,     30,     10,     25,      7,      5,      3,     15,      7,      8,     36,     66,     16,      4,      9,     34,      7,     64,      5,     29,      7,      5,      2,     14,      7,      8 ] 
},
"facet": null,
"color": "Eye",
"type": "bar",
"position": "dodge" 
} 
],
"facet": [],
"guides": [],
"coord": [],
"id": "chart88c5048ab2" 
}
    _.each(chartParams.layers, function(el){
        el.data = polyjs.data(el.data)
    })
    var graph_chart88c5048ab2 = polyjs.chart(chartParams);
</script>


## 座標系と軸の指定

```r
p <- rPlot(x = NULL, y = "Freq", facet = c("Hair", "Sex"), color = "Eye", data = hair_eye, type = "bar")
p$params$layers[[1]]$x <- NULL
p$coord(type = "polar") # パイチャート
p$guides(x = list(position = "none", padding = 0), y = list(numticks=10)) # 軸を変更
o(p)
```


<div id = 'chart88c5227dccf' class = 'rChart polycharts'></div>
<script type='text/javascript'>
    var chartParams = {
 "dom": "chart88c5227dccf",
"width":    800,
"height":    600,
"layers": [
 {
 "y": "Freq",
"data": {
 "Hair": [ "Black", "Brown", "Red", "Blond", "Black", "Brown", "Red", "Blond", "Black", "Brown", "Red", "Blond", "Black", "Brown", "Red", "Blond", "Black", "Brown", "Red", "Blond", "Black", "Brown", "Red", "Blond", "Black", "Brown", "Red", "Blond", "Black", "Brown", "Red", "Blond" ],
"Eye": [ "Brown", "Brown", "Brown", "Brown", "Blue", "Blue", "Blue", "Blue", "Hazel", "Hazel", "Hazel", "Hazel", "Green", "Green", "Green", "Green", "Brown", "Brown", "Brown", "Brown", "Blue", "Blue", "Blue", "Blue", "Hazel", "Hazel", "Hazel", "Hazel", "Green", "Green", "Green", "Green" ],
"Sex": [ "Male", "Male", "Male", "Male", "Male", "Male", "Male", "Male", "Male", "Male", "Male", "Male", "Male", "Male", "Male", "Male", "Female", "Female", "Female", "Female", "Female", "Female", "Female", "Female", "Female", "Female", "Female", "Female", "Female", "Female", "Female", "Female" ],
"Freq": [     32,     53,     10,      3,     11,     50,     10,     30,     10,     25,      7,      5,      3,     15,      7,      8,     36,     66,     16,      4,      9,     34,      7,     64,      5,     29,      7,      5,      2,     14,      7,      8 ] 
},
"facet": [ "Hair", "Sex" ],
"color": "Eye",
"type": "bar" 
} 
],
"facet": {
 "type": "grid",
"x": "Hair",
"y": "Sex" 
},
"guides": {
 "x": {
 "position": "none",
"padding":      0 
},
"y": {
 "numticks":     10 
} 
},
"coord": {
 "type": "polar" 
},
"id": "chart88c5227dccf" 
}
    _.each(chartParams.layers, function(el){
        el.data = polyjs.data(el.data)
    })
    var graph_chart88c5227dccf = polyjs.chart(chartParams);
</script>


## レイヤーの重ね書きとデコレーション


```r
d <- data.frame(x = letters[1:10], y = runif(10))
p <- rPlot(y ~ x, data=d, type="bar")
p$layer(type = "line", color = list(const="green"), copy_layer = TRUE)
p$layer(type = "point", color = list(const="red"), copy_layer = TRUE)
p$addParams(title = "グラフのタイトル")
p$guides(x = list(title = "文字(X軸タイトル)"), y = list(title = "数値(Y軸タイトル)"))
o(p)
```


<div id = 'chart88c6f6640f2' class = 'rChart polycharts'></div>
<script type='text/javascript'>
    var chartParams = {
 "dom": "chart88c6f6640f2",
"width":    800,
"height":    600,
"layers": [
 {
 "x": "x",
"y": "y",
"data": {
 "x": [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j" ],
"y": [ 0.91481, 0.93708, 0.28614, 0.83045, 0.64175, 0.5191, 0.73659, 0.13467, 0.65699, 0.70506 ] 
},
"facet": null,
"type": "bar" 
},
{
 "type": "line",
"color": {
 "const": "green" 
},
"x": "x",
"y": "y",
"data": {
 "x": [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j" ],
"y": [ 0.91481, 0.93708, 0.28614, 0.83045, 0.64175, 0.5191, 0.73659, 0.13467, 0.65699, 0.70506 ] 
},
"facet": null 
},
{
 "type": "point",
"color": {
 "const": "red" 
},
"x": "x",
"y": "y",
"data": {
 "x": [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j" ],
"y": [ 0.91481, 0.93708, 0.28614, 0.83045, 0.64175, 0.5191, 0.73659, 0.13467, 0.65699, 0.70506 ] 
},
"facet": null 
} 
],
"facet": [],
"guides": {
 "x": {
 "title": "文字(X軸タイトル)" 
},
"y": {
 "title": "数値(Y軸タイトル)" 
} 
},
"coord": [],
"title": "グラフのタイトル",
"id": "chart88c6f6640f2" 
}
    _.each(chartParams.layers, function(el){
        el.data = polyjs.data(el.data)
    })
    var graph_chart88c6f6640f2 = polyjs.chart(chartParams);
</script>


## インタラクティブな動作のカスタマイズ

```r
d <- data.frame(x = letters[1:10], y = runif(10))
p <- rPlot(y ~ x, data=d, type="bar", tooltip = "#! function(i) {return('Xは「'+i.x+'」です');} !#")
o(p)
```


<div id = 'chart88c2ed3231' class = 'rChart polycharts'></div>
<script type='text/javascript'>
    var chartParams = {
 "dom": "chart88c2ed3231",
"width":    800,
"height":    600,
"layers": [
 {
 "x": "x",
"y": "y",
"data": {
 "x": [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j" ],
"y": [ 0.45774, 0.71911, 0.93467, 0.25543, 0.46229, 0.94001, 0.97823, 0.11749,  0.475, 0.56033 ] 
},
"facet": null,
"type": "bar",
"tooltip":  function(i) {return('Xは「'+i.x+'」です');}  
} 
],
"facet": [],
"guides": [],
"coord": [],
"id": "chart88c2ed3231" 
}
    _.each(chartParams.layers, function(el){
        el.data = polyjs.data(el.data)
    })
    var graph_chart88c2ed3231 = polyjs.chart(chartParams);
</script>

