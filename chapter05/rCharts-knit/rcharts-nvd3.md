# rCharts featuring NVD3




<!-- プロットのスタイル指定 -->
<style>
.rChart { border: solid 2px; margin: auto; width: 800px; height: 600px;}
</style>

## 散布図

```r
p <- nPlot(Sepal.Length ~ Sepal.Width, group = "Species", data = iris, type = "scatterChart", size = 111)
p$chart(showDistX = TRUE, showDistY = TRUE)
o0(p)
```

<link rel='stylesheet' href=http://nvd3.org/src/nv.d3.css>
<script type='text/javascript' src=http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js></script>
<script type='text/javascript' src=http://d3js.org/d3.v3.min.js></script>
<script type='text/javascript' src=http://timelyportfolio.github.io/rCharts_nvd3_tests/libraries/widgets/nvd3/js/nv.d3.min-new.js></script>
<script type='text/javascript' src=http://nvd3.org/lib/fisheye.js></script>
<div id = 'chart88c73513f61' class = 'rChart nvd3'></div>
<script type='text/javascript'>
 $(document).ready(function(){
      drawchart88c73513f61()
    });
    function drawchart88c73513f61(){  
      var opts = {
 "dom": "chart88c73513f61",
"width":    800,
"height":    600,
"x": "Sepal.Width",
"y": "Sepal.Length",
"group": "Species",
"type": "scatterChart",
"size":    111,
"id": "chart88c73513f61" 
},
        data = [
 {
 "Sepal.Length":            5.1,
"Sepal.Width":            3.5,
"Petal.Length":            1.4,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.9,
"Sepal.Width":              3,
"Petal.Length":            1.4,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.7,
"Sepal.Width":            3.2,
"Petal.Length":            1.3,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.6,
"Sepal.Width":            3.1,
"Petal.Length":            1.5,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":              5,
"Sepal.Width":            3.6,
"Petal.Length":            1.4,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.4,
"Sepal.Width":            3.9,
"Petal.Length":            1.7,
"Petal.Width":            0.4,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.6,
"Sepal.Width":            3.4,
"Petal.Length":            1.4,
"Petal.Width":            0.3,
"Species": "setosa" 
},
{
 "Sepal.Length":              5,
"Sepal.Width":            3.4,
"Petal.Length":            1.5,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.4,
"Sepal.Width":            2.9,
"Petal.Length":            1.4,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.9,
"Sepal.Width":            3.1,
"Petal.Length":            1.5,
"Petal.Width":            0.1,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.4,
"Sepal.Width":            3.7,
"Petal.Length":            1.5,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.8,
"Sepal.Width":            3.4,
"Petal.Length":            1.6,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.8,
"Sepal.Width":              3,
"Petal.Length":            1.4,
"Petal.Width":            0.1,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.3,
"Sepal.Width":              3,
"Petal.Length":            1.1,
"Petal.Width":            0.1,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.8,
"Sepal.Width":              4,
"Petal.Length":            1.2,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.7,
"Sepal.Width":            4.4,
"Petal.Length":            1.5,
"Petal.Width":            0.4,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.4,
"Sepal.Width":            3.9,
"Petal.Length":            1.3,
"Petal.Width":            0.4,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.1,
"Sepal.Width":            3.5,
"Petal.Length":            1.4,
"Petal.Width":            0.3,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.7,
"Sepal.Width":            3.8,
"Petal.Length":            1.7,
"Petal.Width":            0.3,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.1,
"Sepal.Width":            3.8,
"Petal.Length":            1.5,
"Petal.Width":            0.3,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.4,
"Sepal.Width":            3.4,
"Petal.Length":            1.7,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.1,
"Sepal.Width":            3.7,
"Petal.Length":            1.5,
"Petal.Width":            0.4,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.6,
"Sepal.Width":            3.6,
"Petal.Length":              1,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.1,
"Sepal.Width":            3.3,
"Petal.Length":            1.7,
"Petal.Width":            0.5,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.8,
"Sepal.Width":            3.4,
"Petal.Length":            1.9,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":              5,
"Sepal.Width":              3,
"Petal.Length":            1.6,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":              5,
"Sepal.Width":            3.4,
"Petal.Length":            1.6,
"Petal.Width":            0.4,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.2,
"Sepal.Width":            3.5,
"Petal.Length":            1.5,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.2,
"Sepal.Width":            3.4,
"Petal.Length":            1.4,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.7,
"Sepal.Width":            3.2,
"Petal.Length":            1.6,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.8,
"Sepal.Width":            3.1,
"Petal.Length":            1.6,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.4,
"Sepal.Width":            3.4,
"Petal.Length":            1.5,
"Petal.Width":            0.4,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.2,
"Sepal.Width":            4.1,
"Petal.Length":            1.5,
"Petal.Width":            0.1,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.5,
"Sepal.Width":            4.2,
"Petal.Length":            1.4,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.9,
"Sepal.Width":            3.1,
"Petal.Length":            1.5,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":              5,
"Sepal.Width":            3.2,
"Petal.Length":            1.2,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.5,
"Sepal.Width":            3.5,
"Petal.Length":            1.3,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.9,
"Sepal.Width":            3.6,
"Petal.Length":            1.4,
"Petal.Width":            0.1,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.4,
"Sepal.Width":              3,
"Petal.Length":            1.3,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.1,
"Sepal.Width":            3.4,
"Petal.Length":            1.5,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":              5,
"Sepal.Width":            3.5,
"Petal.Length":            1.3,
"Petal.Width":            0.3,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.5,
"Sepal.Width":            2.3,
"Petal.Length":            1.3,
"Petal.Width":            0.3,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.4,
"Sepal.Width":            3.2,
"Petal.Length":            1.3,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":              5,
"Sepal.Width":            3.5,
"Petal.Length":            1.6,
"Petal.Width":            0.6,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.1,
"Sepal.Width":            3.8,
"Petal.Length":            1.9,
"Petal.Width":            0.4,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.8,
"Sepal.Width":              3,
"Petal.Length":            1.4,
"Petal.Width":            0.3,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.1,
"Sepal.Width":            3.8,
"Petal.Length":            1.6,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.6,
"Sepal.Width":            3.2,
"Petal.Length":            1.4,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.3,
"Sepal.Width":            3.7,
"Petal.Length":            1.5,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":              5,
"Sepal.Width":            3.3,
"Petal.Length":            1.4,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":              7,
"Sepal.Width":            3.2,
"Petal.Length":            4.7,
"Petal.Width":            1.4,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.4,
"Sepal.Width":            3.2,
"Petal.Length":            4.5,
"Petal.Width":            1.5,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.9,
"Sepal.Width":            3.1,
"Petal.Length":            4.9,
"Petal.Width":            1.5,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.5,
"Sepal.Width":            2.3,
"Petal.Length":              4,
"Petal.Width":            1.3,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.5,
"Sepal.Width":            2.8,
"Petal.Length":            4.6,
"Petal.Width":            1.5,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.7,
"Sepal.Width":            2.8,
"Petal.Length":            4.5,
"Petal.Width":            1.3,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.3,
"Sepal.Width":            3.3,
"Petal.Length":            4.7,
"Petal.Width":            1.6,
"Species": "versicolor" 
},
{
 "Sepal.Length":            4.9,
"Sepal.Width":            2.4,
"Petal.Length":            3.3,
"Petal.Width":              1,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.6,
"Sepal.Width":            2.9,
"Petal.Length":            4.6,
"Petal.Width":            1.3,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.2,
"Sepal.Width":            2.7,
"Petal.Length":            3.9,
"Petal.Width":            1.4,
"Species": "versicolor" 
},
{
 "Sepal.Length":              5,
"Sepal.Width":              2,
"Petal.Length":            3.5,
"Petal.Width":              1,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.9,
"Sepal.Width":              3,
"Petal.Length":            4.2,
"Petal.Width":            1.5,
"Species": "versicolor" 
},
{
 "Sepal.Length":              6,
"Sepal.Width":            2.2,
"Petal.Length":              4,
"Petal.Width":              1,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.1,
"Sepal.Width":            2.9,
"Petal.Length":            4.7,
"Petal.Width":            1.4,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.6,
"Sepal.Width":            2.9,
"Petal.Length":            3.6,
"Petal.Width":            1.3,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.7,
"Sepal.Width":            3.1,
"Petal.Length":            4.4,
"Petal.Width":            1.4,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.6,
"Sepal.Width":              3,
"Petal.Length":            4.5,
"Petal.Width":            1.5,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.8,
"Sepal.Width":            2.7,
"Petal.Length":            4.1,
"Petal.Width":              1,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.2,
"Sepal.Width":            2.2,
"Petal.Length":            4.5,
"Petal.Width":            1.5,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.6,
"Sepal.Width":            2.5,
"Petal.Length":            3.9,
"Petal.Width":            1.1,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.9,
"Sepal.Width":            3.2,
"Petal.Length":            4.8,
"Petal.Width":            1.8,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.1,
"Sepal.Width":            2.8,
"Petal.Length":              4,
"Petal.Width":            1.3,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.3,
"Sepal.Width":            2.5,
"Petal.Length":            4.9,
"Petal.Width":            1.5,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.1,
"Sepal.Width":            2.8,
"Petal.Length":            4.7,
"Petal.Width":            1.2,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.4,
"Sepal.Width":            2.9,
"Petal.Length":            4.3,
"Petal.Width":            1.3,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.6,
"Sepal.Width":              3,
"Petal.Length":            4.4,
"Petal.Width":            1.4,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.8,
"Sepal.Width":            2.8,
"Petal.Length":            4.8,
"Petal.Width":            1.4,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.7,
"Sepal.Width":              3,
"Petal.Length":              5,
"Petal.Width":            1.7,
"Species": "versicolor" 
},
{
 "Sepal.Length":              6,
"Sepal.Width":            2.9,
"Petal.Length":            4.5,
"Petal.Width":            1.5,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.7,
"Sepal.Width":            2.6,
"Petal.Length":            3.5,
"Petal.Width":              1,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.5,
"Sepal.Width":            2.4,
"Petal.Length":            3.8,
"Petal.Width":            1.1,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.5,
"Sepal.Width":            2.4,
"Petal.Length":            3.7,
"Petal.Width":              1,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.8,
"Sepal.Width":            2.7,
"Petal.Length":            3.9,
"Petal.Width":            1.2,
"Species": "versicolor" 
},
{
 "Sepal.Length":              6,
"Sepal.Width":            2.7,
"Petal.Length":            5.1,
"Petal.Width":            1.6,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.4,
"Sepal.Width":              3,
"Petal.Length":            4.5,
"Petal.Width":            1.5,
"Species": "versicolor" 
},
{
 "Sepal.Length":              6,
"Sepal.Width":            3.4,
"Petal.Length":            4.5,
"Petal.Width":            1.6,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.7,
"Sepal.Width":            3.1,
"Petal.Length":            4.7,
"Petal.Width":            1.5,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.3,
"Sepal.Width":            2.3,
"Petal.Length":            4.4,
"Petal.Width":            1.3,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.6,
"Sepal.Width":              3,
"Petal.Length":            4.1,
"Petal.Width":            1.3,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.5,
"Sepal.Width":            2.5,
"Petal.Length":              4,
"Petal.Width":            1.3,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.5,
"Sepal.Width":            2.6,
"Petal.Length":            4.4,
"Petal.Width":            1.2,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.1,
"Sepal.Width":              3,
"Petal.Length":            4.6,
"Petal.Width":            1.4,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.8,
"Sepal.Width":            2.6,
"Petal.Length":              4,
"Petal.Width":            1.2,
"Species": "versicolor" 
},
{
 "Sepal.Length":              5,
"Sepal.Width":            2.3,
"Petal.Length":            3.3,
"Petal.Width":              1,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.6,
"Sepal.Width":            2.7,
"Petal.Length":            4.2,
"Petal.Width":            1.3,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.7,
"Sepal.Width":              3,
"Petal.Length":            4.2,
"Petal.Width":            1.2,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.7,
"Sepal.Width":            2.9,
"Petal.Length":            4.2,
"Petal.Width":            1.3,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.2,
"Sepal.Width":            2.9,
"Petal.Length":            4.3,
"Petal.Width":            1.3,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.1,
"Sepal.Width":            2.5,
"Petal.Length":              3,
"Petal.Width":            1.1,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.7,
"Sepal.Width":            2.8,
"Petal.Length":            4.1,
"Petal.Width":            1.3,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.3,
"Sepal.Width":            3.3,
"Petal.Length":              6,
"Petal.Width":            2.5,
"Species": "virginica" 
},
{
 "Sepal.Length":            5.8,
"Sepal.Width":            2.7,
"Petal.Length":            5.1,
"Petal.Width":            1.9,
"Species": "virginica" 
},
{
 "Sepal.Length":            7.1,
"Sepal.Width":              3,
"Petal.Length":            5.9,
"Petal.Width":            2.1,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.3,
"Sepal.Width":            2.9,
"Petal.Length":            5.6,
"Petal.Width":            1.8,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.5,
"Sepal.Width":              3,
"Petal.Length":            5.8,
"Petal.Width":            2.2,
"Species": "virginica" 
},
{
 "Sepal.Length":            7.6,
"Sepal.Width":              3,
"Petal.Length":            6.6,
"Petal.Width":            2.1,
"Species": "virginica" 
},
{
 "Sepal.Length":            4.9,
"Sepal.Width":            2.5,
"Petal.Length":            4.5,
"Petal.Width":            1.7,
"Species": "virginica" 
},
{
 "Sepal.Length":            7.3,
"Sepal.Width":            2.9,
"Petal.Length":            6.3,
"Petal.Width":            1.8,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.7,
"Sepal.Width":            2.5,
"Petal.Length":            5.8,
"Petal.Width":            1.8,
"Species": "virginica" 
},
{
 "Sepal.Length":            7.2,
"Sepal.Width":            3.6,
"Petal.Length":            6.1,
"Petal.Width":            2.5,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.5,
"Sepal.Width":            3.2,
"Petal.Length":            5.1,
"Petal.Width":              2,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.4,
"Sepal.Width":            2.7,
"Petal.Length":            5.3,
"Petal.Width":            1.9,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.8,
"Sepal.Width":              3,
"Petal.Length":            5.5,
"Petal.Width":            2.1,
"Species": "virginica" 
},
{
 "Sepal.Length":            5.7,
"Sepal.Width":            2.5,
"Petal.Length":              5,
"Petal.Width":              2,
"Species": "virginica" 
},
{
 "Sepal.Length":            5.8,
"Sepal.Width":            2.8,
"Petal.Length":            5.1,
"Petal.Width":            2.4,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.4,
"Sepal.Width":            3.2,
"Petal.Length":            5.3,
"Petal.Width":            2.3,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.5,
"Sepal.Width":              3,
"Petal.Length":            5.5,
"Petal.Width":            1.8,
"Species": "virginica" 
},
{
 "Sepal.Length":            7.7,
"Sepal.Width":            3.8,
"Petal.Length":            6.7,
"Petal.Width":            2.2,
"Species": "virginica" 
},
{
 "Sepal.Length":            7.7,
"Sepal.Width":            2.6,
"Petal.Length":            6.9,
"Petal.Width":            2.3,
"Species": "virginica" 
},
{
 "Sepal.Length":              6,
"Sepal.Width":            2.2,
"Petal.Length":              5,
"Petal.Width":            1.5,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.9,
"Sepal.Width":            3.2,
"Petal.Length":            5.7,
"Petal.Width":            2.3,
"Species": "virginica" 
},
{
 "Sepal.Length":            5.6,
"Sepal.Width":            2.8,
"Petal.Length":            4.9,
"Petal.Width":              2,
"Species": "virginica" 
},
{
 "Sepal.Length":            7.7,
"Sepal.Width":            2.8,
"Petal.Length":            6.7,
"Petal.Width":              2,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.3,
"Sepal.Width":            2.7,
"Petal.Length":            4.9,
"Petal.Width":            1.8,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.7,
"Sepal.Width":            3.3,
"Petal.Length":            5.7,
"Petal.Width":            2.1,
"Species": "virginica" 
},
{
 "Sepal.Length":            7.2,
"Sepal.Width":            3.2,
"Petal.Length":              6,
"Petal.Width":            1.8,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.2,
"Sepal.Width":            2.8,
"Petal.Length":            4.8,
"Petal.Width":            1.8,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.1,
"Sepal.Width":              3,
"Petal.Length":            4.9,
"Petal.Width":            1.8,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.4,
"Sepal.Width":            2.8,
"Petal.Length":            5.6,
"Petal.Width":            2.1,
"Species": "virginica" 
},
{
 "Sepal.Length":            7.2,
"Sepal.Width":              3,
"Petal.Length":            5.8,
"Petal.Width":            1.6,
"Species": "virginica" 
},
{
 "Sepal.Length":            7.4,
"Sepal.Width":            2.8,
"Petal.Length":            6.1,
"Petal.Width":            1.9,
"Species": "virginica" 
},
{
 "Sepal.Length":            7.9,
"Sepal.Width":            3.8,
"Petal.Length":            6.4,
"Petal.Width":              2,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.4,
"Sepal.Width":            2.8,
"Petal.Length":            5.6,
"Petal.Width":            2.2,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.3,
"Sepal.Width":            2.8,
"Petal.Length":            5.1,
"Petal.Width":            1.5,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.1,
"Sepal.Width":            2.6,
"Petal.Length":            5.6,
"Petal.Width":            1.4,
"Species": "virginica" 
},
{
 "Sepal.Length":            7.7,
"Sepal.Width":              3,
"Petal.Length":            6.1,
"Petal.Width":            2.3,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.3,
"Sepal.Width":            3.4,
"Petal.Length":            5.6,
"Petal.Width":            2.4,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.4,
"Sepal.Width":            3.1,
"Petal.Length":            5.5,
"Petal.Width":            1.8,
"Species": "virginica" 
},
{
 "Sepal.Length":              6,
"Sepal.Width":              3,
"Petal.Length":            4.8,
"Petal.Width":            1.8,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.9,
"Sepal.Width":            3.1,
"Petal.Length":            5.4,
"Petal.Width":            2.1,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.7,
"Sepal.Width":            3.1,
"Petal.Length":            5.6,
"Petal.Width":            2.4,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.9,
"Sepal.Width":            3.1,
"Petal.Length":            5.1,
"Petal.Width":            2.3,
"Species": "virginica" 
},
{
 "Sepal.Length":            5.8,
"Sepal.Width":            2.7,
"Petal.Length":            5.1,
"Petal.Width":            1.9,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.8,
"Sepal.Width":            3.2,
"Petal.Length":            5.9,
"Petal.Width":            2.3,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.7,
"Sepal.Width":            3.3,
"Petal.Length":            5.7,
"Petal.Width":            2.5,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.7,
"Sepal.Width":              3,
"Petal.Length":            5.2,
"Petal.Width":            2.3,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.3,
"Sepal.Width":            2.5,
"Petal.Length":              5,
"Petal.Width":            1.9,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.5,
"Sepal.Width":              3,
"Petal.Length":            5.2,
"Petal.Width":              2,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.2,
"Sepal.Width":            3.4,
"Petal.Length":            5.4,
"Petal.Width":            2.3,
"Species": "virginica" 
},
{
 "Sepal.Length":            5.9,
"Sepal.Width":              3,
"Petal.Length":            5.1,
"Petal.Width":            1.8,
"Species": "virginica" 
} 
]
  
      if(!(opts.type==="pieChart" || opts.type==="sparklinePlus")) {
        var data = d3.nest()
          .key(function(d){
            //return opts.group === undefined ? 'main' : d[opts.group]
            //instead of main would think a better default is opts.x
            return opts.group === undefined ? opts.y : d[opts.group];
          })
          .entries(data);
      }
      
      if (opts.disabled != undefined){
        data.map(function(d, i){
          d.disabled = opts.disabled[i]
        })
      }
      
      nv.addGraph(function() {
        var chart = nv.models[opts.type]()
          .x(function(d) { return d[opts.x] })
          .y(function(d) { return d[opts.y] })
          .width(opts.width)
          .height(opts.height)
         
        chart
  .showDistX(true)
  .showDistY(true)
          
        

        
        
        
      
       d3.select("#" + opts.id)
        .append('svg')
        .datum(data)
        .transition().duration(500)
        .call(chart);

       nv.utils.windowResize(chart.update);
       return chart;
      });
    };
</script>


## 棒グラフ

```r
hair_eye <- as.data.frame(HairEyeColor)
p <- nPlot(Freq ~ Hair, group = 'Eye', data = subset(hair_eye, Sex == "Female"), type = 'multiBarChart')
o(p)
```


<div id = 'chart88c1219cd2d' class = 'rChart nvd3'></div>
<script type='text/javascript'>
 $(document).ready(function(){
      drawchart88c1219cd2d()
    });
    function drawchart88c1219cd2d(){  
      var opts = {
 "dom": "chart88c1219cd2d",
"width":    800,
"height":    600,
"x": "Hair",
"y": "Freq",
"group": "Eye",
"type": "multiBarChart",
"id": "chart88c1219cd2d" 
},
        data = [
 {
 "Hair": "Black",
"Eye": "Brown",
"Sex": "Female",
"Freq":             36 
},
{
 "Hair": "Brown",
"Eye": "Brown",
"Sex": "Female",
"Freq":             66 
},
{
 "Hair": "Red",
"Eye": "Brown",
"Sex": "Female",
"Freq":             16 
},
{
 "Hair": "Blond",
"Eye": "Brown",
"Sex": "Female",
"Freq":              4 
},
{
 "Hair": "Black",
"Eye": "Blue",
"Sex": "Female",
"Freq":              9 
},
{
 "Hair": "Brown",
"Eye": "Blue",
"Sex": "Female",
"Freq":             34 
},
{
 "Hair": "Red",
"Eye": "Blue",
"Sex": "Female",
"Freq":              7 
},
{
 "Hair": "Blond",
"Eye": "Blue",
"Sex": "Female",
"Freq":             64 
},
{
 "Hair": "Black",
"Eye": "Hazel",
"Sex": "Female",
"Freq":              5 
},
{
 "Hair": "Brown",
"Eye": "Hazel",
"Sex": "Female",
"Freq":             29 
},
{
 "Hair": "Red",
"Eye": "Hazel",
"Sex": "Female",
"Freq":              7 
},
{
 "Hair": "Blond",
"Eye": "Hazel",
"Sex": "Female",
"Freq":              5 
},
{
 "Hair": "Black",
"Eye": "Green",
"Sex": "Female",
"Freq":              2 
},
{
 "Hair": "Brown",
"Eye": "Green",
"Sex": "Female",
"Freq":             14 
},
{
 "Hair": "Red",
"Eye": "Green",
"Sex": "Female",
"Freq":              7 
},
{
 "Hair": "Blond",
"Eye": "Green",
"Sex": "Female",
"Freq":              8 
} 
]
  
      if(!(opts.type==="pieChart" || opts.type==="sparklinePlus")) {
        var data = d3.nest()
          .key(function(d){
            //return opts.group === undefined ? 'main' : d[opts.group]
            //instead of main would think a better default is opts.x
            return opts.group === undefined ? opts.y : d[opts.group];
          })
          .entries(data);
      }
      
      if (opts.disabled != undefined){
        data.map(function(d, i){
          d.disabled = opts.disabled[i]
        })
      }
      
      nv.addGraph(function() {
        var chart = nv.models[opts.type]()
          .x(function(d) { return d[opts.x] })
          .y(function(d) { return d[opts.y] })
          .width(opts.width)
          .height(opts.height)
         
        
          
        

        
        
        
      
       d3.select("#" + opts.id)
        .append('svg')
        .datum(data)
        .transition().duration(500)
        .call(chart);

       nv.utils.windowResize(chart.update);
       return chart;
      });
    };
</script>


## ドーナツチャート

```r
d <- data.frame(label = c("とらドラ！", "化物語", "俺の妹がこんなに可愛いわけがない", "IS"), value = c(193, 162, 97, 88))
p <- nPlot(value ~ label, data = d, type = 'pieChart')
p$chart(donut=TRUE)
o(p)
```


<div id = 'chart88c38c5de7b' class = 'rChart nvd3'></div>
<script type='text/javascript'>
 $(document).ready(function(){
      drawchart88c38c5de7b()
    });
    function drawchart88c38c5de7b(){  
      var opts = {
 "dom": "chart88c38c5de7b",
"width":    800,
"height":    600,
"x": "label",
"y": "value",
"type": "pieChart",
"id": "chart88c38c5de7b" 
},
        data = [
 {
 "label": "とらドラ！",
"value":            193 
},
{
 "label": "化物語",
"value":            162 
},
{
 "label": "俺の妹がこんなに可愛いわけがない",
"value":             97 
},
{
 "label": "IS",
"value":             88 
} 
]
  
      if(!(opts.type==="pieChart" || opts.type==="sparklinePlus")) {
        var data = d3.nest()
          .key(function(d){
            //return opts.group === undefined ? 'main' : d[opts.group]
            //instead of main would think a better default is opts.x
            return opts.group === undefined ? opts.y : d[opts.group];
          })
          .entries(data);
      }
      
      if (opts.disabled != undefined){
        data.map(function(d, i){
          d.disabled = opts.disabled[i]
        })
      }
      
      nv.addGraph(function() {
        var chart = nv.models[opts.type]()
          .x(function(d) { return d[opts.x] })
          .y(function(d) { return d[opts.y] })
          .width(opts.width)
          .height(opts.height)
         
        chart
  .donut(true)
          
        

        
        
        
      
       d3.select("#" + opts.id)
        .append('svg')
        .datum(data)
        .transition().duration(500)
        .call(chart);

       nv.utils.windowResize(chart.update);
       return chart;
      });
    };
</script>


## 二軸プロット

```r
d <- data.frame(expand.grid(x = 1:10, n = c("a", "b")), y = c(runif(10), runif(10)*100))
p <- nPlot(y ~ x, group = "n", data = d, type = 'multiChart')
p$params$multi <- list(a = list(type="line", yAxis=1), b = list(type="area", yAxis=2))
p$setTemplate(script = system.file("/libraries/nvd3/layouts/multiChart.html", package = "rCharts"))
o(p)
```


<div id = 'chart88c78f8108e' class = 'rChart nvd3'></div>
<script type='text/javascript'>
 $(document).ready(function(){
      drawchart88c78f8108e()
    });
    function drawchart88c78f8108e(){  
      var opts = {
 "dom": "chart88c78f8108e",
"width":    800,
"height":    600,
"x": "x",
"y": "y",
"group": "n",
"type": "multiChart",
"multi": {
 "a": {
 "type": "line",
"yAxis":      1 
},
"b": {
 "type": "area",
"yAxis":      2 
} 
},
"id": "chart88c78f8108e" 
},
        data = [
 {
 "x": 1,
"n": "a",
"y": 0.9148060434964 
},
{
 "x": 2,
"n": "a",
"y": 0.9370754132979 
},
{
 "x": 3,
"n": "a",
"y": 0.2861395347863 
},
{
 "x": 4,
"n": "a",
"y": 0.8304476260673 
},
{
 "x": 5,
"n": "a",
"y": 0.641745518893 
},
{
 "x": 6,
"n": "a",
"y": 0.5190959491301 
},
{
 "x": 7,
"n": "a",
"y": 0.7365883146413 
},
{
 "x": 8,
"n": "a",
"y": 0.1346665972378 
},
{
 "x": 9,
"n": "a",
"y": 0.6569922904018 
},
{
 "x": 10,
"n": "a",
"y": 0.7050647840369 
},
{
 "x": 1,
"n": "b",
"y": 45.77417762484 
},
{
 "x": 2,
"n": "b",
"y": 71.91122516524 
},
{
 "x": 3,
"n": "b",
"y": 93.46722471528 
},
{
 "x": 4,
"n": "b",
"y": 25.54288243409 
},
{
 "x": 5,
"n": "b",
"y": 46.22928225435 
},
{
 "x": 6,
"n": "b",
"y": 94.00145227555 
},
{
 "x": 7,
"n": "b",
"y": 97.82264283858 
},
{
 "x": 8,
"n": "b",
"y": 11.74873616546 
},
{
 "x": 9,
"n": "b",
"y":  47.4997081561 
},
{
 "x": 10,
"n": "b",
"y":  56.0332746245 
} 
]
  
      if(!(opts.type==="pieChart")) {
        var data = d3.nest()
          .key(function(d){
            return opts.group === undefined ? 'main' : d[opts.group]
          })
          .entries(data);
      }
      
      //loop through to give an expected x and y
      //then give the type and yAxis hopefully provided by R
      data.forEach(function(variables) {
		    variables.values.forEach(function(values){
			    values.x = values[opts.x];
			    values.y = values[opts.y];
		    });
        variables.type = opts.multi[variables.key].type;
        variables.yAxis = opts.multi[variables.key].yAxis;
	    });
    
      
      nv.addGraph(function() {
        var chart = nv.models[opts.type]()
          //.x(function(d) { return d[opts.x] })
          //.y(function(d) { return d[opts.y] })
          .width(opts.width)
          .height(opts.height)
         
        
          
        

        
        
        
      
       d3.select("#" + opts.id)
        .append('svg')
        .datum(data)
        .transition().duration(500)
        .call(chart);

       nv.utils.windowResize(chart.update);
       return chart;
      });
    };
</script>

