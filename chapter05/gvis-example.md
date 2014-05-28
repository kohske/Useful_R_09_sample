# googleVisの利用例




## 縦と横の棒グラフ


```r
d <- ddply(iris, .(Species), colwise(mean))
p1 <- gvisBarChart(d)
p2 <- gvisColumnChart(d, options=list(isStacked=TRUE))
p <- gvisMerge(p1, p2, horizontal = FALSE, chartid = "chart01")
print(p, tag = "chart")
```

<!-- BarChart generated in R 3.0.2 by googleVis 0.4.7 package -->
<!-- Tue Feb 25 02:19:20 2014 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataBarChartIDcb222f156dd9 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "setosa",
5.006,
3.428,
1.462,
0.246 
],
[
 "versicolor",
5.936,
2.77,
4.26,
1.326 
],
[
 "virginica",
6.588,
2.974,
5.552,
2.026 
] 
];
data.addColumn('string','Species');
data.addColumn('number','Sepal.Length');
data.addColumn('number','Sepal.Width');
data.addColumn('number','Petal.Length');
data.addColumn('number','Petal.Width');
data.addRows(datajson);
return(data);
}


// jsData 
function gvisDataColumnChartIDcb2227ded9b5 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "setosa",
5.006,
3.428,
1.462,
0.246 
],
[
 "versicolor",
5.936,
2.77,
4.26,
1.326 
],
[
 "virginica",
6.588,
2.974,
5.552,
2.026 
] 
];
data.addColumn('string','Species');
data.addColumn('number','Sepal.Length');
data.addColumn('number','Sepal.Width');
data.addColumn('number','Petal.Length');
data.addColumn('number','Petal.Width');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartBarChartIDcb222f156dd9() {
var data = gvisDataBarChartIDcb222f156dd9();
var options = {};
options["allowHtml"] = true;

    var chart = new google.visualization.BarChart(
    document.getElementById('BarChartIDcb222f156dd9')
    );
    chart.draw(data,options);
    

}
  


// jsDrawChart
function drawChartColumnChartIDcb2227ded9b5() {
var data = gvisDataColumnChartIDcb2227ded9b5();
var options = {};
options["allowHtml"] = true;
options["isStacked"] = true;

    var chart = new google.visualization.ColumnChart(
    document.getElementById('ColumnChartIDcb2227ded9b5')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "corechart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartBarChartIDcb222f156dd9);
})();
function displayChartBarChartIDcb222f156dd9() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}


// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "corechart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartColumnChartIDcb2227ded9b5);
})();
function displayChartColumnChartIDcb2227ded9b5() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartBarChartIDcb222f156dd9"></script>


<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartColumnChartIDcb2227ded9b5"></script>
 
<table border="0">
<tr>
<td>

<!-- divChart -->
  
<div id="BarChartIDcb222f156dd9"
  style="width: 600px; height: 500px;">
</div>

</td>
</tr>
<tr>
<td>

<!-- divChart -->
  
<div id="ColumnChartIDcb2227ded9b5"
  style="width: 600px; height: 500px;">
</div>

</td>
</tr>
</table>


## ゲージチャート

```r
p <- gvisGauge(d, labelvar="Species", numvar=c("Sepal.Length"), chartid = "chart02")
print(p, tag = "chart")
```

<!-- Gauge generated in R 3.0.2 by googleVis 0.4.7 package -->
<!-- Tue Feb 25 02:19:21 2014 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDatachart02 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "setosa",
5.006,
3.428,
1.462,
0.246 
],
[
 "versicolor",
5.936,
2.77,
4.26,
1.326 
],
[
 "virginica",
6.588,
2.974,
5.552,
2.026 
] 
];
data.addColumn('string','Species');
data.addColumn('number','Sepal.Length');
data.addColumn('number','Sepal.Width');
data.addColumn('number','Petal.Length');
data.addColumn('number','Petal.Width');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartchart02() {
var data = gvisDatachart02();
var options = {};
options["allowHtml"] = true;

    var chart = new google.visualization.Gauge(
    document.getElementById('chart02')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "gauge";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartchart02);
})();
function displayChartchart02() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartchart02"></script>
 
<!-- divChart -->
  
<div id="chart02"
  style="width: 600px; height: 500px;">
</div>


## 入れ子の棒グラフ

```r
library(reshape2)
d <- dcast(as.data.frame(HairEyeColor), Hair~Eye, fun.aggregate=mean)
```

```
## Using Freq as value column: use value.var to override.
```

```r
p <- gvisBarChart(d, options = list(vAxis = "{title: \"Hair\"}"), chartid = "chart03")
print(p, tag = "chart")
```

<!-- BarChart generated in R 3.0.2 by googleVis 0.4.7 package -->
<!-- Tue Feb 25 02:19:21 2014 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDatachart03 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "Black",
34,
10,
7.5,
2.5 
],
[
 "Brown",
59.5,
42,
27,
14.5 
],
[
 "Red",
13,
8.5,
7,
7 
],
[
 "Blond",
3.5,
47,
5,
8 
] 
];
data.addColumn('string','Hair');
data.addColumn('number','Brown');
data.addColumn('number','Blue');
data.addColumn('number','Hazel');
data.addColumn('number','Green');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartchart03() {
var data = gvisDatachart03();
var options = {};
options["allowHtml"] = true;
options["vAxis"] = {title: "Hair"};

    var chart = new google.visualization.BarChart(
    document.getElementById('chart03')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "corechart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartchart03);
})();
function displayChartchart03() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartchart03"></script>
 
<!-- divChart -->
  
<div id="chart03"
  style="width: 600px; height: 500px;">
</div>


## エリアチャート、２軸の線グラフ

```r
d <- data.frame(x = paste(2001:2010), y1 = runif(10), y2 = runif(10)*10, y3 = runif(10))
p1 <- gvisAreaChart(d, options = list(isStacked = TRUE))
p2 <- gvisLineChart(d, xvar = "x", yvar = c("y1", "y2"), 
                    options = list(series="[{targetAxisIndex: 0}, {targetAxisIndex:1}]"))
p <- gvisMerge(p1, p2, horizontal = TRUE, chartid = "chart04")
print(p, tag = "chart")
```

<!-- AreaChart generated in R 3.0.2 by googleVis 0.4.7 package -->
<!-- Tue Feb 25 02:19:21 2014 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataAreaChartIDcb2217a70e86 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "2001",
0.8697139509,
8.34648994,
0.7012710273 
],
[
 "2002",
0.2626478071,
0.8782878285,
0.3397069327 
],
[
 "2003",
0.7461910292,
0.9955095663,
0.8153742489 
],
[
 "2004",
0.1360884139,
2.483415208,
0.2726031721 
],
[
 "2005",
0.4700354715,
2.615010322,
0.4419035616 
],
[
 "2006",
0.5383828306,
3.453554099,
0.8147872188 
],
[
 "2007",
0.8775964293,
4.61025673,
0.8231729905 
],
[
 "2008",
0.9552234812,
9.808216067,
0.4535700004 
],
[
 "2009",
0.7404969081,
9.025551849,
0.6835639451 
],
[
 "2010",
0.2405553956,
0.1357847499,
0.4252514204 
] 
];
data.addColumn('string','x');
data.addColumn('number','y1');
data.addColumn('number','y2');
data.addColumn('number','y3');
data.addRows(datajson);
return(data);
}


// jsData 
function gvisDataLineChartIDcb2258aa8b8b () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "2001",
0.8697139509,
8.34648994 
],
[
 "2002",
0.2626478071,
0.8782878285 
],
[
 "2003",
0.7461910292,
0.9955095663 
],
[
 "2004",
0.1360884139,
2.483415208 
],
[
 "2005",
0.4700354715,
2.615010322 
],
[
 "2006",
0.5383828306,
3.453554099 
],
[
 "2007",
0.8775964293,
4.61025673 
],
[
 "2008",
0.9552234812,
9.808216067 
],
[
 "2009",
0.7404969081,
9.025551849 
],
[
 "2010",
0.2405553956,
0.1357847499 
] 
];
data.addColumn('string','x');
data.addColumn('number','y1');
data.addColumn('number','y2');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartAreaChartIDcb2217a70e86() {
var data = gvisDataAreaChartIDcb2217a70e86();
var options = {};
options["allowHtml"] = true;
options["isStacked"] = true;

    var chart = new google.visualization.AreaChart(
    document.getElementById('AreaChartIDcb2217a70e86')
    );
    chart.draw(data,options);
    

}
  


// jsDrawChart
function drawChartLineChartIDcb2258aa8b8b() {
var data = gvisDataLineChartIDcb2258aa8b8b();
var options = {};
options["allowHtml"] = true;
options["series"] = [{targetAxisIndex: 0}, {targetAxisIndex:1}];

    var chart = new google.visualization.LineChart(
    document.getElementById('LineChartIDcb2258aa8b8b')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "corechart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartAreaChartIDcb2217a70e86);
})();
function displayChartAreaChartIDcb2217a70e86() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}


// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "corechart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartLineChartIDcb2258aa8b8b);
})();
function displayChartLineChartIDcb2258aa8b8b() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartAreaChartIDcb2217a70e86"></script>


<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartLineChartIDcb2258aa8b8b"></script>
 
<table border="0">
<tr>
<td>

<!-- divChart -->
  
<div id="AreaChartIDcb2217a70e86"
  style="width: 600px; height: 500px;">
</div>

</td>
<td>

<!-- divChart -->
  
<div id="LineChartIDcb2258aa8b8b"
  style="width: 600px; height: 500px;">
</div>

</td>
</tr>
</table>


## 表

```r
p <- gvisTable(iris, chartid = "chart05")
print(p, tag = "chart")
```

<!-- Table generated in R 3.0.2 by googleVis 0.4.7 package -->
<!-- Tue Feb 25 02:19:21 2014 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDatachart05 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 5.1,
3.5,
1.4,
0.2,
"setosa" 
],
[
 4.9,
3,
1.4,
0.2,
"setosa" 
],
[
 4.7,
3.2,
1.3,
0.2,
"setosa" 
],
[
 4.6,
3.1,
1.5,
0.2,
"setosa" 
],
[
 5,
3.6,
1.4,
0.2,
"setosa" 
],
[
 5.4,
3.9,
1.7,
0.4,
"setosa" 
],
[
 4.6,
3.4,
1.4,
0.3,
"setosa" 
],
[
 5,
3.4,
1.5,
0.2,
"setosa" 
],
[
 4.4,
2.9,
1.4,
0.2,
"setosa" 
],
[
 4.9,
3.1,
1.5,
0.1,
"setosa" 
],
[
 5.4,
3.7,
1.5,
0.2,
"setosa" 
],
[
 4.8,
3.4,
1.6,
0.2,
"setosa" 
],
[
 4.8,
3,
1.4,
0.1,
"setosa" 
],
[
 4.3,
3,
1.1,
0.1,
"setosa" 
],
[
 5.8,
4,
1.2,
0.2,
"setosa" 
],
[
 5.7,
4.4,
1.5,
0.4,
"setosa" 
],
[
 5.4,
3.9,
1.3,
0.4,
"setosa" 
],
[
 5.1,
3.5,
1.4,
0.3,
"setosa" 
],
[
 5.7,
3.8,
1.7,
0.3,
"setosa" 
],
[
 5.1,
3.8,
1.5,
0.3,
"setosa" 
],
[
 5.4,
3.4,
1.7,
0.2,
"setosa" 
],
[
 5.1,
3.7,
1.5,
0.4,
"setosa" 
],
[
 4.6,
3.6,
1,
0.2,
"setosa" 
],
[
 5.1,
3.3,
1.7,
0.5,
"setosa" 
],
[
 4.8,
3.4,
1.9,
0.2,
"setosa" 
],
[
 5,
3,
1.6,
0.2,
"setosa" 
],
[
 5,
3.4,
1.6,
0.4,
"setosa" 
],
[
 5.2,
3.5,
1.5,
0.2,
"setosa" 
],
[
 5.2,
3.4,
1.4,
0.2,
"setosa" 
],
[
 4.7,
3.2,
1.6,
0.2,
"setosa" 
],
[
 4.8,
3.1,
1.6,
0.2,
"setosa" 
],
[
 5.4,
3.4,
1.5,
0.4,
"setosa" 
],
[
 5.2,
4.1,
1.5,
0.1,
"setosa" 
],
[
 5.5,
4.2,
1.4,
0.2,
"setosa" 
],
[
 4.9,
3.1,
1.5,
0.2,
"setosa" 
],
[
 5,
3.2,
1.2,
0.2,
"setosa" 
],
[
 5.5,
3.5,
1.3,
0.2,
"setosa" 
],
[
 4.9,
3.6,
1.4,
0.1,
"setosa" 
],
[
 4.4,
3,
1.3,
0.2,
"setosa" 
],
[
 5.1,
3.4,
1.5,
0.2,
"setosa" 
],
[
 5,
3.5,
1.3,
0.3,
"setosa" 
],
[
 4.5,
2.3,
1.3,
0.3,
"setosa" 
],
[
 4.4,
3.2,
1.3,
0.2,
"setosa" 
],
[
 5,
3.5,
1.6,
0.6,
"setosa" 
],
[
 5.1,
3.8,
1.9,
0.4,
"setosa" 
],
[
 4.8,
3,
1.4,
0.3,
"setosa" 
],
[
 5.1,
3.8,
1.6,
0.2,
"setosa" 
],
[
 4.6,
3.2,
1.4,
0.2,
"setosa" 
],
[
 5.3,
3.7,
1.5,
0.2,
"setosa" 
],
[
 5,
3.3,
1.4,
0.2,
"setosa" 
],
[
 7,
3.2,
4.7,
1.4,
"versicolor" 
],
[
 6.4,
3.2,
4.5,
1.5,
"versicolor" 
],
[
 6.9,
3.1,
4.9,
1.5,
"versicolor" 
],
[
 5.5,
2.3,
4,
1.3,
"versicolor" 
],
[
 6.5,
2.8,
4.6,
1.5,
"versicolor" 
],
[
 5.7,
2.8,
4.5,
1.3,
"versicolor" 
],
[
 6.3,
3.3,
4.7,
1.6,
"versicolor" 
],
[
 4.9,
2.4,
3.3,
1,
"versicolor" 
],
[
 6.6,
2.9,
4.6,
1.3,
"versicolor" 
],
[
 5.2,
2.7,
3.9,
1.4,
"versicolor" 
],
[
 5,
2,
3.5,
1,
"versicolor" 
],
[
 5.9,
3,
4.2,
1.5,
"versicolor" 
],
[
 6,
2.2,
4,
1,
"versicolor" 
],
[
 6.1,
2.9,
4.7,
1.4,
"versicolor" 
],
[
 5.6,
2.9,
3.6,
1.3,
"versicolor" 
],
[
 6.7,
3.1,
4.4,
1.4,
"versicolor" 
],
[
 5.6,
3,
4.5,
1.5,
"versicolor" 
],
[
 5.8,
2.7,
4.1,
1,
"versicolor" 
],
[
 6.2,
2.2,
4.5,
1.5,
"versicolor" 
],
[
 5.6,
2.5,
3.9,
1.1,
"versicolor" 
],
[
 5.9,
3.2,
4.8,
1.8,
"versicolor" 
],
[
 6.1,
2.8,
4,
1.3,
"versicolor" 
],
[
 6.3,
2.5,
4.9,
1.5,
"versicolor" 
],
[
 6.1,
2.8,
4.7,
1.2,
"versicolor" 
],
[
 6.4,
2.9,
4.3,
1.3,
"versicolor" 
],
[
 6.6,
3,
4.4,
1.4,
"versicolor" 
],
[
 6.8,
2.8,
4.8,
1.4,
"versicolor" 
],
[
 6.7,
3,
5,
1.7,
"versicolor" 
],
[
 6,
2.9,
4.5,
1.5,
"versicolor" 
],
[
 5.7,
2.6,
3.5,
1,
"versicolor" 
],
[
 5.5,
2.4,
3.8,
1.1,
"versicolor" 
],
[
 5.5,
2.4,
3.7,
1,
"versicolor" 
],
[
 5.8,
2.7,
3.9,
1.2,
"versicolor" 
],
[
 6,
2.7,
5.1,
1.6,
"versicolor" 
],
[
 5.4,
3,
4.5,
1.5,
"versicolor" 
],
[
 6,
3.4,
4.5,
1.6,
"versicolor" 
],
[
 6.7,
3.1,
4.7,
1.5,
"versicolor" 
],
[
 6.3,
2.3,
4.4,
1.3,
"versicolor" 
],
[
 5.6,
3,
4.1,
1.3,
"versicolor" 
],
[
 5.5,
2.5,
4,
1.3,
"versicolor" 
],
[
 5.5,
2.6,
4.4,
1.2,
"versicolor" 
],
[
 6.1,
3,
4.6,
1.4,
"versicolor" 
],
[
 5.8,
2.6,
4,
1.2,
"versicolor" 
],
[
 5,
2.3,
3.3,
1,
"versicolor" 
],
[
 5.6,
2.7,
4.2,
1.3,
"versicolor" 
],
[
 5.7,
3,
4.2,
1.2,
"versicolor" 
],
[
 5.7,
2.9,
4.2,
1.3,
"versicolor" 
],
[
 6.2,
2.9,
4.3,
1.3,
"versicolor" 
],
[
 5.1,
2.5,
3,
1.1,
"versicolor" 
],
[
 5.7,
2.8,
4.1,
1.3,
"versicolor" 
],
[
 6.3,
3.3,
6,
2.5,
"virginica" 
],
[
 5.8,
2.7,
5.1,
1.9,
"virginica" 
],
[
 7.1,
3,
5.9,
2.1,
"virginica" 
],
[
 6.3,
2.9,
5.6,
1.8,
"virginica" 
],
[
 6.5,
3,
5.8,
2.2,
"virginica" 
],
[
 7.6,
3,
6.6,
2.1,
"virginica" 
],
[
 4.9,
2.5,
4.5,
1.7,
"virginica" 
],
[
 7.3,
2.9,
6.3,
1.8,
"virginica" 
],
[
 6.7,
2.5,
5.8,
1.8,
"virginica" 
],
[
 7.2,
3.6,
6.1,
2.5,
"virginica" 
],
[
 6.5,
3.2,
5.1,
2,
"virginica" 
],
[
 6.4,
2.7,
5.3,
1.9,
"virginica" 
],
[
 6.8,
3,
5.5,
2.1,
"virginica" 
],
[
 5.7,
2.5,
5,
2,
"virginica" 
],
[
 5.8,
2.8,
5.1,
2.4,
"virginica" 
],
[
 6.4,
3.2,
5.3,
2.3,
"virginica" 
],
[
 6.5,
3,
5.5,
1.8,
"virginica" 
],
[
 7.7,
3.8,
6.7,
2.2,
"virginica" 
],
[
 7.7,
2.6,
6.9,
2.3,
"virginica" 
],
[
 6,
2.2,
5,
1.5,
"virginica" 
],
[
 6.9,
3.2,
5.7,
2.3,
"virginica" 
],
[
 5.6,
2.8,
4.9,
2,
"virginica" 
],
[
 7.7,
2.8,
6.7,
2,
"virginica" 
],
[
 6.3,
2.7,
4.9,
1.8,
"virginica" 
],
[
 6.7,
3.3,
5.7,
2.1,
"virginica" 
],
[
 7.2,
3.2,
6,
1.8,
"virginica" 
],
[
 6.2,
2.8,
4.8,
1.8,
"virginica" 
],
[
 6.1,
3,
4.9,
1.8,
"virginica" 
],
[
 6.4,
2.8,
5.6,
2.1,
"virginica" 
],
[
 7.2,
3,
5.8,
1.6,
"virginica" 
],
[
 7.4,
2.8,
6.1,
1.9,
"virginica" 
],
[
 7.9,
3.8,
6.4,
2,
"virginica" 
],
[
 6.4,
2.8,
5.6,
2.2,
"virginica" 
],
[
 6.3,
2.8,
5.1,
1.5,
"virginica" 
],
[
 6.1,
2.6,
5.6,
1.4,
"virginica" 
],
[
 7.7,
3,
6.1,
2.3,
"virginica" 
],
[
 6.3,
3.4,
5.6,
2.4,
"virginica" 
],
[
 6.4,
3.1,
5.5,
1.8,
"virginica" 
],
[
 6,
3,
4.8,
1.8,
"virginica" 
],
[
 6.9,
3.1,
5.4,
2.1,
"virginica" 
],
[
 6.7,
3.1,
5.6,
2.4,
"virginica" 
],
[
 6.9,
3.1,
5.1,
2.3,
"virginica" 
],
[
 5.8,
2.7,
5.1,
1.9,
"virginica" 
],
[
 6.8,
3.2,
5.9,
2.3,
"virginica" 
],
[
 6.7,
3.3,
5.7,
2.5,
"virginica" 
],
[
 6.7,
3,
5.2,
2.3,
"virginica" 
],
[
 6.3,
2.5,
5,
1.9,
"virginica" 
],
[
 6.5,
3,
5.2,
2,
"virginica" 
],
[
 6.2,
3.4,
5.4,
2.3,
"virginica" 
],
[
 5.9,
3,
5.1,
1.8,
"virginica" 
] 
];
data.addColumn('number','Sepal.Length');
data.addColumn('number','Sepal.Width');
data.addColumn('number','Petal.Length');
data.addColumn('number','Petal.Width');
data.addColumn('string','Species');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartchart05() {
var data = gvisDatachart05();
var options = {};
options["allowHtml"] = true;

    var chart = new google.visualization.Table(
    document.getElementById('chart05')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "table";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartchart05);
})();
function displayChartchart05() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartchart05"></script>
 
<!-- divChart -->
  
<div id="chart05"
  style="width: 600px; height: 500px;">
</div>

