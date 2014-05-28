---
title       : slidify + googleVis = \(\infty\)
author      : "@kohske"
framework   : io2012
widgets     : [mathjax]
mode        : standalone
---



## 映画のレイティング


```r
d <- data.frame(table(cut(ggplot2::movies$rating, 0:10)))
p <- gvisPieChart(d, options = list(pieHole = 0.5, chartArea = "{left:0,top:0, width:\"80%\",height:\"80%\"}", 
    height = 500), chartid = "mychart01")
print(p, tag = "chart")
```

<!-- PieChart generated in R 3.0.2 by googleVis 0.4.7 package -->
<!-- Mon Feb 24 00:24:08 2014 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDatamychart01 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "(0,1]",
106 
],
[
 "(1,2]",
731 
],
[
 "(2,3]",
1986 
],
[
 "(3,4]",
4326 
],
[
 "(4,5]",
8172 
],
[
 "(5,6]",
13708 
],
[
 "(6,7]",
15726 
],
[
 "(7,8]",
9961 
],
[
 "(8,9]",
3264 
],
[
 "(9,10]",
808 
] 
];
data.addColumn('string','Var1');
data.addColumn('number','Freq');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartmychart01() {
var data = gvisDatamychart01();
var options = {};
options["allowHtml"] = true;
options["pieHole"] =    0.5;
options["chartArea"] = {left:0,top:0, width:"80%",height:"80%"};
options["height"] =    500;

    var chart = new google.visualization.PieChart(
    document.getElementById('mychart01')
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
callbacks.push(drawChartmychart01);
})();
function displayChartmychart01() {
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
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartmychart01"></script>
 
<!-- divChart -->
  
<div id="mychart01"
  style="width: 600px; height: 500px;">
</div>


