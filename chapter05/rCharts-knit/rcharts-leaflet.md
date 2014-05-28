# rCharts featuring leaflet




<!-- プロットのスタイル指定 -->
<style>
.rChart { border: solid 2px; margin: auto; width: 800px; height: 600px;}
</style>


```r
cen <- c(36+6/60, 139+39/60+18/60/60)
p <- Leaflet$new()
p$setView(cen, 13)
p$marker(cen, bindPopup = "鷲宮神社")
o0(p)
```

<link rel='stylesheet' href=http://cdn.leafletjs.com/leaflet-0.5.1/leaflet.css>
<script type='text/javascript' src=http://cdn.leafletjs.com/leaflet-0.5.1/leaflet.js></script>
<script type='text/javascript' src=https://rawgithub.com/leaflet-extras/leaflet-providers/gh-pages/leaflet-providers.js></script>
<script type='text/javascript' src=http://harrywood.co.uk/maps/examples/leaflet/leaflet-plugins/layer/vector/KML.js></script> 
 <style>
  .rChart {
    display: block;
    margin-left: auto; 
    margin-right: auto;
    width: 800px;
    height: 600px;
  }  
  </style>
<div id = 'charte7b7ccc18cf' class = 'rChart leaflet'></div>
<script>
  var spec = {
 "dom": "charte7b7ccc18cf",
"width":            800,
"height":            600,
"urlTemplate": "http://{s}.tile.osm.org/{z}/{x}/{y}.png",
"layerOpts": {
 "attribution": "Map data<a href=\"http://openstreetmap.org\">OpenStreetMap</a>\n         contributors, Imagery<a href=\"http://mapbox.com\">MapBox</a>" 
},
"center": [           36.1,        139.655 ],
"zoom":             13,
"id": "charte7b7ccc18cf" 
}

  var map = L.map(spec.dom, spec.mapOpts)
  
    map.setView(spec.center, spec.zoom);

    if (spec.provider){
      L.tileLayer.provider(spec.provider).addTo(map)    
    } else {
		  L.tileLayer(spec.urlTemplate, spec.layerOpts).addTo(map)
    }
     
    L
  .marker([
   36.1,
139.66 
])
  .addTo( map )
  .bindPopup("鷲宮神社")
    
    
    
    
    if (spec.circle2){
      for (var c in spec.circle2){
        var circle = L.circle(c.center, c.radius, c.opts)
         .addTo(map);
      }
    }
    
    
    
    
    
   
   
   
</script>

