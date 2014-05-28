# WebGLで3Dデータの可視化




## `iris`データの3次元プロット

<script src="CanvasMatrix.js" type="text/javascript"></script>
<canvas id="webgl_sample_01textureCanvas" style="display: none;" width="256" height="256">
<img src="webgl_sample_01snapshot.png" alt="webgl_sample_01snapshot" width=505/><br>
	Your browser does not support the HTML5 canvas element.</canvas>
<!-- ****** points object 6 ****** -->
<script id="webgl_sample_01vshader6" type="x-shader/x-vertex">
	attribute vec3 aPos;
	attribute vec4 aCol;
	uniform mat4 mvMatrix;
	uniform mat4 prMatrix;
	varying vec4 vCol;
	varying vec4 vPosition;
	void main(void) {
	  vPosition = mvMatrix * vec4(aPos, 1.);
	  gl_Position = prMatrix * vPosition;
	  gl_PointSize = 10.;
	  vCol = aCol;
	}
</script>
<script id="webgl_sample_01fshader6" type="x-shader/x-fragment"> 
	#ifdef GL_ES
	precision highp float;
	#endif
	varying vec4 vCol; // carries alpha
	varying vec4 vPosition;
	void main(void) {
      vec4 colDiff = vCol;
	  vec4 lighteffect = colDiff;
	  gl_FragColor = lighteffect;
	}
</script> 
<!-- ****** text object 8 ****** -->
<script id="webgl_sample_01vshader8" type="x-shader/x-vertex">
	attribute vec3 aPos;
	attribute vec4 aCol;
	uniform mat4 mvMatrix;
	uniform mat4 prMatrix;
	varying vec4 vCol;
	varying vec4 vPosition;
	attribute vec2 aTexcoord;
	varying vec2 vTexcoord;
	attribute vec2 aOfs;
	void main(void) {
	  vCol = aCol;
	  vTexcoord = aTexcoord;
	  vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
	  pos = pos/pos.w;
	  gl_Position = pos + vec4(aOfs, 0.,0.);
	}
</script>
<script id="webgl_sample_01fshader8" type="x-shader/x-fragment"> 
	#ifdef GL_ES
	precision highp float;
	#endif
	varying vec4 vCol; // carries alpha
	varying vec4 vPosition;
	varying vec2 vTexcoord;
	uniform sampler2D uSampler;
	void main(void) {
      vec4 colDiff = vCol;
	  vec4 lighteffect = colDiff;
	  vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
	  if (textureColor.a < 0.1)
	    discard;
	  else
	    gl_FragColor = textureColor;
	}
</script> 
<!-- ****** text object 9 ****** -->
<script id="webgl_sample_01vshader9" type="x-shader/x-vertex">
	attribute vec3 aPos;
	attribute vec4 aCol;
	uniform mat4 mvMatrix;
	uniform mat4 prMatrix;
	varying vec4 vCol;
	varying vec4 vPosition;
	attribute vec2 aTexcoord;
	varying vec2 vTexcoord;
	attribute vec2 aOfs;
	void main(void) {
	  vCol = aCol;
	  vTexcoord = aTexcoord;
	  vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
	  pos = pos/pos.w;
	  gl_Position = pos + vec4(aOfs, 0.,0.);
	}
</script>
<script id="webgl_sample_01fshader9" type="x-shader/x-fragment"> 
	#ifdef GL_ES
	precision highp float;
	#endif
	varying vec4 vCol; // carries alpha
	varying vec4 vPosition;
	varying vec2 vTexcoord;
	uniform sampler2D uSampler;
	void main(void) {
      vec4 colDiff = vCol;
	  vec4 lighteffect = colDiff;
	  vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
	  if (textureColor.a < 0.1)
	    discard;
	  else
	    gl_FragColor = textureColor;
	}
</script> 
<!-- ****** text object 10 ****** -->
<script id="webgl_sample_01vshader10" type="x-shader/x-vertex">
	attribute vec3 aPos;
	attribute vec4 aCol;
	uniform mat4 mvMatrix;
	uniform mat4 prMatrix;
	varying vec4 vCol;
	varying vec4 vPosition;
	attribute vec2 aTexcoord;
	varying vec2 vTexcoord;
	attribute vec2 aOfs;
	void main(void) {
	  vCol = aCol;
	  vTexcoord = aTexcoord;
	  vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
	  pos = pos/pos.w;
	  gl_Position = pos + vec4(aOfs, 0.,0.);
	}
</script>
<script id="webgl_sample_01fshader10" type="x-shader/x-fragment"> 
	#ifdef GL_ES
	precision highp float;
	#endif
	varying vec4 vCol; // carries alpha
	varying vec4 vPosition;
	varying vec2 vTexcoord;
	uniform sampler2D uSampler;
	void main(void) {
      vec4 colDiff = vCol;
	  vec4 lighteffect = colDiff;
	  vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
	  if (textureColor.a < 0.1)
	    discard;
	  else
	    gl_FragColor = textureColor;
	}
</script> 
<!-- ****** lines object 11 ****** -->
<script id="webgl_sample_01vshader11" type="x-shader/x-vertex">
	attribute vec3 aPos;
	attribute vec4 aCol;
	uniform mat4 mvMatrix;
	uniform mat4 prMatrix;
	varying vec4 vCol;
	varying vec4 vPosition;
	void main(void) {
	  vPosition = mvMatrix * vec4(aPos, 1.);
	  gl_Position = prMatrix * vPosition;
	  vCol = aCol;
	}
</script>
<script id="webgl_sample_01fshader11" type="x-shader/x-fragment"> 
	#ifdef GL_ES
	precision highp float;
	#endif
	varying vec4 vCol; // carries alpha
	varying vec4 vPosition;
	void main(void) {
      vec4 colDiff = vCol;
	  vec4 lighteffect = colDiff;
	  gl_FragColor = lighteffect;
	}
</script> 
<!-- ****** text object 12 ****** -->
<script id="webgl_sample_01vshader12" type="x-shader/x-vertex">
	attribute vec3 aPos;
	attribute vec4 aCol;
	uniform mat4 mvMatrix;
	uniform mat4 prMatrix;
	varying vec4 vCol;
	varying vec4 vPosition;
	attribute vec2 aTexcoord;
	varying vec2 vTexcoord;
	attribute vec2 aOfs;
	void main(void) {
	  vCol = aCol;
	  vTexcoord = aTexcoord;
	  vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
	  pos = pos/pos.w;
	  gl_Position = pos + vec4(aOfs, 0.,0.);
	}
</script>
<script id="webgl_sample_01fshader12" type="x-shader/x-fragment"> 
	#ifdef GL_ES
	precision highp float;
	#endif
	varying vec4 vCol; // carries alpha
	varying vec4 vPosition;
	varying vec2 vTexcoord;
	uniform sampler2D uSampler;
	void main(void) {
      vec4 colDiff = vCol;
	  vec4 lighteffect = colDiff;
	  vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
	  if (textureColor.a < 0.1)
	    discard;
	  else
	    gl_FragColor = textureColor;
	}
</script> 
<!-- ****** lines object 13 ****** -->
<script id="webgl_sample_01vshader13" type="x-shader/x-vertex">
	attribute vec3 aPos;
	attribute vec4 aCol;
	uniform mat4 mvMatrix;
	uniform mat4 prMatrix;
	varying vec4 vCol;
	varying vec4 vPosition;
	void main(void) {
	  vPosition = mvMatrix * vec4(aPos, 1.);
	  gl_Position = prMatrix * vPosition;
	  vCol = aCol;
	}
</script>
<script id="webgl_sample_01fshader13" type="x-shader/x-fragment"> 
	#ifdef GL_ES
	precision highp float;
	#endif
	varying vec4 vCol; // carries alpha
	varying vec4 vPosition;
	void main(void) {
      vec4 colDiff = vCol;
	  vec4 lighteffect = colDiff;
	  gl_FragColor = lighteffect;
	}
</script> 
<!-- ****** text object 14 ****** -->
<script id="webgl_sample_01vshader14" type="x-shader/x-vertex">
	attribute vec3 aPos;
	attribute vec4 aCol;
	uniform mat4 mvMatrix;
	uniform mat4 prMatrix;
	varying vec4 vCol;
	varying vec4 vPosition;
	attribute vec2 aTexcoord;
	varying vec2 vTexcoord;
	attribute vec2 aOfs;
	void main(void) {
	  vCol = aCol;
	  vTexcoord = aTexcoord;
	  vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
	  pos = pos/pos.w;
	  gl_Position = pos + vec4(aOfs, 0.,0.);
	}
</script>
<script id="webgl_sample_01fshader14" type="x-shader/x-fragment"> 
	#ifdef GL_ES
	precision highp float;
	#endif
	varying vec4 vCol; // carries alpha
	varying vec4 vPosition;
	varying vec2 vTexcoord;
	uniform sampler2D uSampler;
	void main(void) {
      vec4 colDiff = vCol;
	  vec4 lighteffect = colDiff;
	  vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
	  if (textureColor.a < 0.1)
	    discard;
	  else
	    gl_FragColor = textureColor;
	}
</script> 
<!-- ****** lines object 15 ****** -->
<script id="webgl_sample_01vshader15" type="x-shader/x-vertex">
	attribute vec3 aPos;
	attribute vec4 aCol;
	uniform mat4 mvMatrix;
	uniform mat4 prMatrix;
	varying vec4 vCol;
	varying vec4 vPosition;
	void main(void) {
	  vPosition = mvMatrix * vec4(aPos, 1.);
	  gl_Position = prMatrix * vPosition;
	  vCol = aCol;
	}
</script>
<script id="webgl_sample_01fshader15" type="x-shader/x-fragment"> 
	#ifdef GL_ES
	precision highp float;
	#endif
	varying vec4 vCol; // carries alpha
	varying vec4 vPosition;
	void main(void) {
      vec4 colDiff = vCol;
	  vec4 lighteffect = colDiff;
	  gl_FragColor = lighteffect;
	}
</script> 
<!-- ****** text object 16 ****** -->
<script id="webgl_sample_01vshader16" type="x-shader/x-vertex">
	attribute vec3 aPos;
	attribute vec4 aCol;
	uniform mat4 mvMatrix;
	uniform mat4 prMatrix;
	varying vec4 vCol;
	varying vec4 vPosition;
	attribute vec2 aTexcoord;
	varying vec2 vTexcoord;
	attribute vec2 aOfs;
	void main(void) {
	  vCol = aCol;
	  vTexcoord = aTexcoord;
	  vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
	  pos = pos/pos.w;
	  gl_Position = pos + vec4(aOfs, 0.,0.);
	}
</script>
<script id="webgl_sample_01fshader16" type="x-shader/x-fragment"> 
	#ifdef GL_ES
	precision highp float;
	#endif
	varying vec4 vCol; // carries alpha
	varying vec4 vPosition;
	varying vec2 vTexcoord;
	uniform sampler2D uSampler;
	void main(void) {
      vec4 colDiff = vCol;
	  vec4 lighteffect = colDiff;
	  vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
	  if (textureColor.a < 0.1)
	    discard;
	  else
	    gl_FragColor = textureColor;
	}
</script> 
<!-- ****** lines object 17 ****** -->
<script id="webgl_sample_01vshader17" type="x-shader/x-vertex">
	attribute vec3 aPos;
	attribute vec4 aCol;
	uniform mat4 mvMatrix;
	uniform mat4 prMatrix;
	varying vec4 vCol;
	varying vec4 vPosition;
	void main(void) {
	  vPosition = mvMatrix * vec4(aPos, 1.);
	  gl_Position = prMatrix * vPosition;
	  vCol = aCol;
	}
</script>
<script id="webgl_sample_01fshader17" type="x-shader/x-fragment"> 
	#ifdef GL_ES
	precision highp float;
	#endif
	varying vec4 vCol; // carries alpha
	varying vec4 vPosition;
	void main(void) {
      vec4 colDiff = vCol;
	  vec4 lighteffect = colDiff;
	  gl_FragColor = lighteffect;
	}
</script> 
<script type="text/javascript"> 
	function getShader ( gl, id ){
	   var shaderScript = document.getElementById ( id );
	   var str = "";
	   var k = shaderScript.firstChild;
	   while ( k ){
	     if ( k.nodeType == 3 ) str += k.textContent;
	     k = k.nextSibling;
	   }
	   var shader;
	   if ( shaderScript.type == "x-shader/x-fragment" )
             shader = gl.createShader ( gl.FRAGMENT_SHADER );
	   else if ( shaderScript.type == "x-shader/x-vertex" )
             shader = gl.createShader(gl.VERTEX_SHADER);
	   else return null;
	   gl.shaderSource(shader, str);
	   gl.compileShader(shader);
	   if (gl.getShaderParameter(shader, gl.COMPILE_STATUS) == 0)
	     alert(gl.getShaderInfoLog(shader));
	   return shader;
	}
	var min = Math.min;
	var max = Math.max;
	var sqrt = Math.sqrt;
	var sin = Math.sin;
	var acos = Math.acos;
	var tan = Math.tan;
	var SQRT2 = Math.SQRT2;
	var PI = Math.PI;
	var log = Math.log;
	var exp = Math.exp;
	function webgl_sample_01webGLStart() {
	   var debug = function(msg) {
	     document.getElementById("webgl_sample_01debug").innerHTML = msg;
	   }
	   debug("");
	   var canvas = document.getElementById("webgl_sample_01canvas");
	   if (!window.WebGLRenderingContext){
	     debug("<img src=\"webgl_sample_01snapshot.png\" alt=\"webgl_sample_01snapshot\" width=505/><br> Your browser does not support WebGL. See <a href=\"http://get.webgl.org\">http://get.webgl.org</a>");
	     return;
	   }
	   var gl;
	   try {
	     // Try to grab the standard context. If it fails, fallback to experimental.
	     gl = canvas.getContext("webgl") 
	       || canvas.getContext("experimental-webgl");
	   }
	   catch(e) {}
	   if ( !gl ) {
	     debug("<img src=\"webgl_sample_01snapshot.png\" alt=\"webgl_sample_01snapshot\" width=505/><br> Your browser appears to support WebGL, but did not create a WebGL context.  See <a href=\"http://get.webgl.org\">http://get.webgl.org</a>");
	     return;
	   }
	   var width = 505;  var height = 505;
	   canvas.width = width;   canvas.height = height;
	   gl.viewport(0, 0, width, height);
	   var prMatrix = new CanvasMatrix4();
	   var mvMatrix = new CanvasMatrix4();
	   var normMatrix = new CanvasMatrix4();
	   var saveMat = new CanvasMatrix4();
	   saveMat.makeIdentity();
	   var distance;
	   var posLoc = 0;
	   var colLoc = 1;
	   var zoom = 1;
	   var fov = 30;
	   var userMatrix = new CanvasMatrix4();
	   userMatrix.load([
	    1, 0, 0, 0,
	    0, 0.3420201, -0.9396926, 0,
	    0, 0.9396926, 0.3420201, 0,
	    0, 0, 0, 1
		]);
	   function getPowerOfTwo(value) {
	     var pow = 1;
	     while(pow<value) {
	       pow *= 2;
	     }
	     return pow;
	   }
	   function handleLoadedTexture(texture, textureCanvas) {
	     gl.pixelStorei(gl.UNPACK_FLIP_Y_WEBGL, true);
	     gl.bindTexture(gl.TEXTURE_2D, texture);
	     gl.texImage2D(gl.TEXTURE_2D, 0, gl.RGBA, gl.RGBA, gl.UNSIGNED_BYTE, textureCanvas);
	     gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MAG_FILTER, gl.LINEAR);
	     gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MIN_FILTER, gl.LINEAR_MIPMAP_NEAREST);
	     gl.generateMipmap(gl.TEXTURE_2D);
	     gl.bindTexture(gl.TEXTURE_2D, null);
	   }
	   function loadImageToTexture(filename, texture) {   
	     var canvas = document.getElementById("webgl_sample_01textureCanvas");
	     var ctx = canvas.getContext("2d");
	     var image = new Image();
	     image.onload = function() {
	       var w = image.width;
	       var h = image.height;
	       var canvasX = getPowerOfTwo(w);
	       var canvasY = getPowerOfTwo(h);
	       canvas.width = canvasX;
	       canvas.height = canvasY;
	       ctx.imageSmoothingEnabled = true;
	       ctx.drawImage(image, 0, 0, canvasX, canvasY);
	       handleLoadedTexture(texture, canvas);
   	       drawScene();
	     }
	     image.src = filename;
	   }  	   
	   function drawTextToCanvas(text, cex) {
	     var canvasX, canvasY;
	     var textX, textY;
	     var textHeight = 20 * cex;
	     var textColour = "white";
	     var fontFamily = "Arial";
	     var backgroundColour = "rgba(0,0,0,0)";
	     var canvas = document.getElementById("webgl_sample_01textureCanvas");
	     var ctx = canvas.getContext("2d");
	     ctx.font = textHeight+"px "+fontFamily;
             canvasX = 1;
             var widths = [];
	     for (var i = 0; i < text.length; i++)  {
	       widths[i] = ctx.measureText(text[i]).width;
	       canvasX = (widths[i] > canvasX) ? widths[i] : canvasX;
	     }	  
	     canvasX = getPowerOfTwo(canvasX);
	     var offset = 2*textHeight; // offset to first baseline
	     var skip = 2*textHeight;   // skip between baselines	  
	     canvasY = getPowerOfTwo(offset + text.length*skip);
	     canvas.width = canvasX;
	     canvas.height = canvasY;
	     ctx.fillStyle = backgroundColour;
	     ctx.fillRect(0, 0, ctx.canvas.width, ctx.canvas.height);
	     ctx.fillStyle = textColour;
	     ctx.textAlign = "left";
	     ctx.textBaseline = "alphabetic";
	     ctx.font = textHeight+"px "+fontFamily;
	     for(var i = 0; i < text.length; i++) {
	       textY = i*skip + offset;
	       ctx.fillText(text[i], 0,  textY);
	     }
	     return {canvasX:canvasX, canvasY:canvasY,
	             widths:widths, textHeight:textHeight,
	             offset:offset, skip:skip};
	   }
	   // ****** points object 6 ******
	   var prog6  = gl.createProgram();
	   gl.attachShader(prog6, getShader( gl, "webgl_sample_01vshader6" ));
	   gl.attachShader(prog6, getShader( gl, "webgl_sample_01fshader6" ));
	   //  Force aPos to location 0, aCol to location 1 
	   gl.bindAttribLocation(prog6, 0, "aPos");
	   gl.bindAttribLocation(prog6, 1, "aCol");
	   gl.linkProgram(prog6);
	   var v=new Float32Array([
	    3.5, 1.4, 0.2, 0, 0, 0, 1,
	    3, 1.4, 0.2, 0, 0, 0, 1,
	    3.2, 1.3, 0.2, 0, 0, 0, 1,
	    3.1, 1.5, 0.2, 0, 0, 0, 1,
	    3.6, 1.4, 0.2, 0, 0, 0, 1,
	    3.9, 1.7, 0.4, 0, 0, 0, 1,
	    3.4, 1.4, 0.3, 0, 0, 0, 1,
	    3.4, 1.5, 0.2, 0, 0, 0, 1,
	    2.9, 1.4, 0.2, 0, 0, 0, 1,
	    3.1, 1.5, 0.1, 0, 0, 0, 1,
	    3.7, 1.5, 0.2, 0, 0, 0, 1,
	    3.4, 1.6, 0.2, 0, 0, 0, 1,
	    3, 1.4, 0.1, 0, 0, 0, 1,
	    3, 1.1, 0.1, 0, 0, 0, 1,
	    4, 1.2, 0.2, 0, 0, 0, 1,
	    4.4, 1.5, 0.4, 0, 0, 0, 1,
	    3.9, 1.3, 0.4, 0, 0, 0, 1,
	    3.5, 1.4, 0.3, 0, 0, 0, 1,
	    3.8, 1.7, 0.3, 0, 0, 0, 1,
	    3.8, 1.5, 0.3, 0, 0, 0, 1,
	    3.4, 1.7, 0.2, 0, 0, 0, 1,
	    3.7, 1.5, 0.4, 0, 0, 0, 1,
	    3.6, 1, 0.2, 0, 0, 0, 1,
	    3.3, 1.7, 0.5, 0, 0, 0, 1,
	    3.4, 1.9, 0.2, 0, 0, 0, 1,
	    3, 1.6, 0.2, 0, 0, 0, 1,
	    3.4, 1.6, 0.4, 0, 0, 0, 1,
	    3.5, 1.5, 0.2, 0, 0, 0, 1,
	    3.4, 1.4, 0.2, 0, 0, 0, 1,
	    3.2, 1.6, 0.2, 0, 0, 0, 1,
	    3.1, 1.6, 0.2, 0, 0, 0, 1,
	    3.4, 1.5, 0.4, 0, 0, 0, 1,
	    4.1, 1.5, 0.1, 0, 0, 0, 1,
	    4.2, 1.4, 0.2, 0, 0, 0, 1,
	    3.1, 1.5, 0.2, 0, 0, 0, 1,
	    3.2, 1.2, 0.2, 0, 0, 0, 1,
	    3.5, 1.3, 0.2, 0, 0, 0, 1,
	    3.6, 1.4, 0.1, 0, 0, 0, 1,
	    3, 1.3, 0.2, 0, 0, 0, 1,
	    3.4, 1.5, 0.2, 0, 0, 0, 1,
	    3.5, 1.3, 0.3, 0, 0, 0, 1,
	    2.3, 1.3, 0.3, 0, 0, 0, 1,
	    3.2, 1.3, 0.2, 0, 0, 0, 1,
	    3.5, 1.6, 0.6, 0, 0, 0, 1,
	    3.8, 1.9, 0.4, 0, 0, 0, 1,
	    3, 1.4, 0.3, 0, 0, 0, 1,
	    3.8, 1.6, 0.2, 0, 0, 0, 1,
	    3.2, 1.4, 0.2, 0, 0, 0, 1,
	    3.7, 1.5, 0.2, 0, 0, 0, 1,
	    3.3, 1.4, 0.2, 0, 0, 0, 1,
	    3.2, 4.7, 1.4, 0.3019608, 0.3019608, 0.3019608, 1,
	    3.2, 4.5, 1.5, 0.3019608, 0.3019608, 0.3019608, 1,
	    3.1, 4.9, 1.5, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.3, 4, 1.3, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.8, 4.6, 1.5, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.8, 4.5, 1.3, 0.3019608, 0.3019608, 0.3019608, 1,
	    3.3, 4.7, 1.6, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.4, 3.3, 1, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.9, 4.6, 1.3, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.7, 3.9, 1.4, 0.3019608, 0.3019608, 0.3019608, 1,
	    2, 3.5, 1, 0.3019608, 0.3019608, 0.3019608, 1,
	    3, 4.2, 1.5, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.2, 4, 1, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.9, 4.7, 1.4, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.9, 3.6, 1.3, 0.3019608, 0.3019608, 0.3019608, 1,
	    3.1, 4.4, 1.4, 0.3019608, 0.3019608, 0.3019608, 1,
	    3, 4.5, 1.5, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.7, 4.1, 1, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.2, 4.5, 1.5, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.5, 3.9, 1.1, 0.3019608, 0.3019608, 0.3019608, 1,
	    3.2, 4.8, 1.8, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.8, 4, 1.3, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.5, 4.9, 1.5, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.8, 4.7, 1.2, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.9, 4.3, 1.3, 0.3019608, 0.3019608, 0.3019608, 1,
	    3, 4.4, 1.4, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.8, 4.8, 1.4, 0.3019608, 0.3019608, 0.3019608, 1,
	    3, 5, 1.7, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.9, 4.5, 1.5, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.6, 3.5, 1, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.4, 3.8, 1.1, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.4, 3.7, 1, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.7, 3.9, 1.2, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.7, 5.1, 1.6, 0.3019608, 0.3019608, 0.3019608, 1,
	    3, 4.5, 1.5, 0.3019608, 0.3019608, 0.3019608, 1,
	    3.4, 4.5, 1.6, 0.3019608, 0.3019608, 0.3019608, 1,
	    3.1, 4.7, 1.5, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.3, 4.4, 1.3, 0.3019608, 0.3019608, 0.3019608, 1,
	    3, 4.1, 1.3, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.5, 4, 1.3, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.6, 4.4, 1.2, 0.3019608, 0.3019608, 0.3019608, 1,
	    3, 4.6, 1.4, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.6, 4, 1.2, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.3, 3.3, 1, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.7, 4.2, 1.3, 0.3019608, 0.3019608, 0.3019608, 1,
	    3, 4.2, 1.2, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.9, 4.2, 1.3, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.9, 4.3, 1.3, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.5, 3, 1.1, 0.3019608, 0.3019608, 0.3019608, 1,
	    2.8, 4.1, 1.3, 0.3019608, 0.3019608, 0.3019608, 1,
	    3.3, 6, 2.5, 0.6, 0.6, 0.6, 1,
	    2.7, 5.1, 1.9, 0.6, 0.6, 0.6, 1,
	    3, 5.9, 2.1, 0.6, 0.6, 0.6, 1,
	    2.9, 5.6, 1.8, 0.6, 0.6, 0.6, 1,
	    3, 5.8, 2.2, 0.6, 0.6, 0.6, 1,
	    3, 6.6, 2.1, 0.6, 0.6, 0.6, 1,
	    2.5, 4.5, 1.7, 0.6, 0.6, 0.6, 1,
	    2.9, 6.3, 1.8, 0.6, 0.6, 0.6, 1,
	    2.5, 5.8, 1.8, 0.6, 0.6, 0.6, 1,
	    3.6, 6.1, 2.5, 0.6, 0.6, 0.6, 1,
	    3.2, 5.1, 2, 0.6, 0.6, 0.6, 1,
	    2.7, 5.3, 1.9, 0.6, 0.6, 0.6, 1,
	    3, 5.5, 2.1, 0.6, 0.6, 0.6, 1,
	    2.5, 5, 2, 0.6, 0.6, 0.6, 1,
	    2.8, 5.1, 2.4, 0.6, 0.6, 0.6, 1,
	    3.2, 5.3, 2.3, 0.6, 0.6, 0.6, 1,
	    3, 5.5, 1.8, 0.6, 0.6, 0.6, 1,
	    3.8, 6.7, 2.2, 0.6, 0.6, 0.6, 1,
	    2.6, 6.9, 2.3, 0.6, 0.6, 0.6, 1,
	    2.2, 5, 1.5, 0.6, 0.6, 0.6, 1,
	    3.2, 5.7, 2.3, 0.6, 0.6, 0.6, 1,
	    2.8, 4.9, 2, 0.6, 0.6, 0.6, 1,
	    2.8, 6.7, 2, 0.6, 0.6, 0.6, 1,
	    2.7, 4.9, 1.8, 0.6, 0.6, 0.6, 1,
	    3.3, 5.7, 2.1, 0.6, 0.6, 0.6, 1,
	    3.2, 6, 1.8, 0.6, 0.6, 0.6, 1,
	    2.8, 4.8, 1.8, 0.6, 0.6, 0.6, 1,
	    3, 4.9, 1.8, 0.6, 0.6, 0.6, 1,
	    2.8, 5.6, 2.1, 0.6, 0.6, 0.6, 1,
	    3, 5.8, 1.6, 0.6, 0.6, 0.6, 1,
	    2.8, 6.1, 1.9, 0.6, 0.6, 0.6, 1,
	    3.8, 6.4, 2, 0.6, 0.6, 0.6, 1,
	    2.8, 5.6, 2.2, 0.6, 0.6, 0.6, 1,
	    2.8, 5.1, 1.5, 0.6, 0.6, 0.6, 1,
	    2.6, 5.6, 1.4, 0.6, 0.6, 0.6, 1,
	    3, 6.1, 2.3, 0.6, 0.6, 0.6, 1,
	    3.4, 5.6, 2.4, 0.6, 0.6, 0.6, 1,
	    3.1, 5.5, 1.8, 0.6, 0.6, 0.6, 1,
	    3, 4.8, 1.8, 0.6, 0.6, 0.6, 1,
	    3.1, 5.4, 2.1, 0.6, 0.6, 0.6, 1,
	    3.1, 5.6, 2.4, 0.6, 0.6, 0.6, 1,
	    3.1, 5.1, 2.3, 0.6, 0.6, 0.6, 1,
	    2.7, 5.1, 1.9, 0.6, 0.6, 0.6, 1,
	    3.2, 5.9, 2.3, 0.6, 0.6, 0.6, 1,
	    3.3, 5.7, 2.5, 0.6, 0.6, 0.6, 1,
	    3, 5.2, 2.3, 0.6, 0.6, 0.6, 1,
	    2.5, 5, 1.9, 0.6, 0.6, 0.6, 1,
	    3, 5.2, 2, 0.6, 0.6, 0.6, 1,
	    3.4, 5.4, 2.3, 0.6, 0.6, 0.6, 1,
	    3, 5.1, 1.8, 0.6, 0.6, 0.6, 1
	   ]);
	   var buf6 = gl.createBuffer();
	   gl.bindBuffer(gl.ARRAY_BUFFER, buf6);
	   gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
	   var mvMatLoc6 = gl.getUniformLocation(prog6,"mvMatrix");
	   var prMatLoc6 = gl.getUniformLocation(prog6,"prMatrix");
	   // ****** text object 8 ******
	   var prog8  = gl.createProgram();
	   gl.attachShader(prog8, getShader( gl, "webgl_sample_01vshader8" ));
	   gl.attachShader(prog8, getShader( gl, "webgl_sample_01fshader8" ));
	   //  Force aPos to location 0, aCol to location 1 
	   gl.bindAttribLocation(prog8, 0, "aPos");
	   gl.bindAttribLocation(prog8, 1, "aCol");
	   gl.linkProgram(prog8);
	   var texts = [
	    "Sepal.Width"
	   ];
	   var texinfo = drawTextToCanvas(texts, 1);	 
	   var canvasX8 = texinfo.canvasX;
	   var canvasY8 = texinfo.canvasY;
	   var ofsLoc8 = gl.getAttribLocation(prog8, "aOfs");
	   var texture8 = gl.createTexture();
	   var texLoc8 = gl.getAttribLocation(prog8, "aTexcoord");
	   var sampler8 = gl.getUniformLocation(prog8,"uSampler");
    	   handleLoadedTexture(texture8, document.getElementById("webgl_sample_01textureCanvas"));
	   var v=new Float32Array([
	    3.2, -5.001617e-05, -0.3068, 0, -0.5, 0.5, 0.5,
	    3.2, -5.001617e-05, -0.3068, 1, -0.5, 0.5, 0.5,
	    3.2, -5.001617e-05, -0.3068, 1, 1.5, 0.5, 0.5,
	    3.2, -5.001617e-05, -0.3068, 0, 1.5, 0.5, 0.5
	   ]);
	   for (var i=0; i<1; i++) 
	     for (var j=0; j<4; j++) {
	         ind = 7*(4*i + j) + 3;
	         v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i]/width;
	         v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight/height;
	         v[ind] *= texinfo.widths[i]/texinfo.canvasX;
	         v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
	           - v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
	     }
	   var f=new Uint16Array([
	    0, 1, 2, 0, 2, 3
	   ]);
	   var buf8 = gl.createBuffer();
	   gl.bindBuffer(gl.ARRAY_BUFFER, buf8);
	   gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
	   var ibuf8 = gl.createBuffer();
	   gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf8);
	   gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
	   var mvMatLoc8 = gl.getUniformLocation(prog8,"mvMatrix");
	   var prMatLoc8 = gl.getUniformLocation(prog8,"prMatrix");
	   // ****** text object 9 ******
	   var prog9  = gl.createProgram();
	   gl.attachShader(prog9, getShader( gl, "webgl_sample_01vshader9" ));
	   gl.attachShader(prog9, getShader( gl, "webgl_sample_01fshader9" ));
	   //  Force aPos to location 0, aCol to location 1 
	   gl.bindAttribLocation(prog9, 0, "aPos");
	   gl.bindAttribLocation(prog9, 1, "aCol");
	   gl.linkProgram(prog9);
	   var texts = [
	    "Petal.Length"
	   ];
	   var texinfo = drawTextToCanvas(texts, 1);	 
	   var canvasX9 = texinfo.canvasX;
	   var canvasY9 = texinfo.canvasY;
	   var ofsLoc9 = gl.getAttribLocation(prog9, "aOfs");
	   var texture9 = gl.createTexture();
	   var texLoc9 = gl.getAttribLocation(prog9, "aTexcoord");
	   var sampler9 = gl.getUniformLocation(prog9,"uSampler");
    	   handleLoadedTexture(texture9, document.getElementById("webgl_sample_01textureCanvas"));
	   var v=new Float32Array([
	    1.5932, 3.95, -0.3068, 0, -0.5, 0.5, 0.5,
	    1.5932, 3.95, -0.3068, 1, -0.5, 0.5, 0.5,
	    1.5932, 3.95, -0.3068, 1, 1.5, 0.5, 0.5,
	    1.5932, 3.95, -0.3068, 0, 1.5, 0.5, 0.5
	   ]);
	   for (var i=0; i<1; i++) 
	     for (var j=0; j<4; j++) {
	         ind = 7*(4*i + j) + 3;
	         v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i]/width;
	         v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight/height;
	         v[ind] *= texinfo.widths[i]/texinfo.canvasX;
	         v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
	           - v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
	     }
	   var f=new Uint16Array([
	    0, 1, 2, 0, 2, 3
	   ]);
	   var buf9 = gl.createBuffer();
	   gl.bindBuffer(gl.ARRAY_BUFFER, buf9);
	   gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
	   var ibuf9 = gl.createBuffer();
	   gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf9);
	   gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
	   var mvMatLoc9 = gl.getUniformLocation(prog9,"mvMatrix");
	   var prMatLoc9 = gl.getUniformLocation(prog9,"prMatrix");
	   // ****** text object 10 ******
	   var prog10  = gl.createProgram();
	   gl.attachShader(prog10, getShader( gl, "webgl_sample_01vshader10" ));
	   gl.attachShader(prog10, getShader( gl, "webgl_sample_01fshader10" ));
	   //  Force aPos to location 0, aCol to location 1 
	   gl.bindAttribLocation(prog10, 0, "aPos");
	   gl.bindAttribLocation(prog10, 1, "aCol");
	   gl.linkProgram(prog10);
	   var texts = [
	    "Petal.Width"
	   ];
	   var texinfo = drawTextToCanvas(texts, 1);	 
	   var canvasX10 = texinfo.canvasX;
	   var canvasY10 = texinfo.canvasY;
	   var ofsLoc10 = gl.getAttribLocation(prog10, "aOfs");
	   var texture10 = gl.createTexture();
	   var texLoc10 = gl.getAttribLocation(prog10, "aTexcoord");
	   var sampler10 = gl.getUniformLocation(prog10,"uSampler");
    	   handleLoadedTexture(texture10, document.getElementById("webgl_sample_01textureCanvas"));
	   var v=new Float32Array([
	    1.5932, -5.001617e-05, 1.3, 0, -0.5, 0.5, 0.5,
	    1.5932, -5.001617e-05, 1.3, 1, -0.5, 0.5, 0.5,
	    1.5932, -5.001617e-05, 1.3, 1, 1.5, 0.5, 0.5,
	    1.5932, -5.001617e-05, 1.3, 0, 1.5, 0.5, 0.5
	   ]);
	   for (var i=0; i<1; i++) 
	     for (var j=0; j<4; j++) {
	         ind = 7*(4*i + j) + 3;
	         v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i]/width;
	         v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight/height;
	         v[ind] *= texinfo.widths[i]/texinfo.canvasX;
	         v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
	           - v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
	     }
	   var f=new Uint16Array([
	    0, 1, 2, 0, 2, 3
	   ]);
	   var buf10 = gl.createBuffer();
	   gl.bindBuffer(gl.ARRAY_BUFFER, buf10);
	   gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
	   var ibuf10 = gl.createBuffer();
	   gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf10);
	   gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
	   var mvMatLoc10 = gl.getUniformLocation(prog10,"mvMatrix");
	   var prMatLoc10 = gl.getUniformLocation(prog10,"prMatrix");
	   // ****** lines object 11 ******
	   var prog11  = gl.createProgram();
	   gl.attachShader(prog11, getShader( gl, "webgl_sample_01vshader11" ));
	   gl.attachShader(prog11, getShader( gl, "webgl_sample_01fshader11" ));
	   //  Force aPos to location 0, aCol to location 1 
	   gl.bindAttribLocation(prog11, 0, "aPos");
	   gl.bindAttribLocation(prog11, 1, "aCol");
	   gl.linkProgram(prog11);
	   var v=new Float32Array([
	    2, 0.9115, 0.064,
	    4, 0.9115, 0.064,
	    2, 0.9115, 0.064,
	    2, 0.759575, 0.002200002,
	    2.5, 0.9115, 0.064,
	    2.5, 0.759575, 0.002200002,
	    3, 0.9115, 0.064,
	    3, 0.759575, 0.002200002,
	    3.5, 0.9115, 0.064,
	    3.5, 0.759575, 0.002200002,
	    4, 0.9115, 0.064,
	    4, 0.759575, 0.002200002
	   ]);
	   var buf11 = gl.createBuffer();
	   gl.bindBuffer(gl.ARRAY_BUFFER, buf11);
	   gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
	   var mvMatLoc11 = gl.getUniformLocation(prog11,"mvMatrix");
	   var prMatLoc11 = gl.getUniformLocation(prog11,"prMatrix");
	   // ****** text object 12 ******
	   var prog12  = gl.createProgram();
	   gl.attachShader(prog12, getShader( gl, "webgl_sample_01vshader12" ));
	   gl.attachShader(prog12, getShader( gl, "webgl_sample_01fshader12" ));
	   //  Force aPos to location 0, aCol to location 1 
	   gl.bindAttribLocation(prog12, 0, "aPos");
	   gl.bindAttribLocation(prog12, 1, "aCol");
	   gl.linkProgram(prog12);
	   var texts = [
	    "2",
	    "2.5",
	    "3",
	    "3.5",
	    "4"
	   ];
	   var texinfo = drawTextToCanvas(texts, 1);	 
	   var canvasX12 = texinfo.canvasX;
	   var canvasY12 = texinfo.canvasY;
	   var ofsLoc12 = gl.getAttribLocation(prog12, "aOfs");
	   var texture12 = gl.createTexture();
	   var texLoc12 = gl.getAttribLocation(prog12, "aTexcoord");
	   var sampler12 = gl.getUniformLocation(prog12,"uSampler");
    	   handleLoadedTexture(texture12, document.getElementById("webgl_sample_01textureCanvas"));
	   var v=new Float32Array([
	    2, 0.455725, -0.1214, 0, -0.5, 0.5, 0.5,
	    2, 0.455725, -0.1214, 1, -0.5, 0.5, 0.5,
	    2, 0.455725, -0.1214, 1, 1.5, 0.5, 0.5,
	    2, 0.455725, -0.1214, 0, 1.5, 0.5, 0.5,
	    2.5, 0.455725, -0.1214, 0, -0.5, 0.5, 0.5,
	    2.5, 0.455725, -0.1214, 1, -0.5, 0.5, 0.5,
	    2.5, 0.455725, -0.1214, 1, 1.5, 0.5, 0.5,
	    2.5, 0.455725, -0.1214, 0, 1.5, 0.5, 0.5,
	    3, 0.455725, -0.1214, 0, -0.5, 0.5, 0.5,
	    3, 0.455725, -0.1214, 1, -0.5, 0.5, 0.5,
	    3, 0.455725, -0.1214, 1, 1.5, 0.5, 0.5,
	    3, 0.455725, -0.1214, 0, 1.5, 0.5, 0.5,
	    3.5, 0.455725, -0.1214, 0, -0.5, 0.5, 0.5,
	    3.5, 0.455725, -0.1214, 1, -0.5, 0.5, 0.5,
	    3.5, 0.455725, -0.1214, 1, 1.5, 0.5, 0.5,
	    3.5, 0.455725, -0.1214, 0, 1.5, 0.5, 0.5,
	    4, 0.455725, -0.1214, 0, -0.5, 0.5, 0.5,
	    4, 0.455725, -0.1214, 1, -0.5, 0.5, 0.5,
	    4, 0.455725, -0.1214, 1, 1.5, 0.5, 0.5,
	    4, 0.455725, -0.1214, 0, 1.5, 0.5, 0.5
	   ]);
	   for (var i=0; i<5; i++) 
	     for (var j=0; j<4; j++) {
	         ind = 7*(4*i + j) + 3;
	         v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i]/width;
	         v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight/height;
	         v[ind] *= texinfo.widths[i]/texinfo.canvasX;
	         v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
	           - v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
	     }
	   var f=new Uint16Array([
	    0, 1, 2, 0, 2, 3,
	    4, 5, 6, 4, 6, 7,
	    8, 9, 10, 8, 10, 11,
	    12, 13, 14, 12, 14, 15,
	    16, 17, 18, 16, 18, 19
	   ]);
	   var buf12 = gl.createBuffer();
	   gl.bindBuffer(gl.ARRAY_BUFFER, buf12);
	   gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
	   var ibuf12 = gl.createBuffer();
	   gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf12);
	   gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
	   var mvMatLoc12 = gl.getUniformLocation(prog12,"mvMatrix");
	   var prMatLoc12 = gl.getUniformLocation(prog12,"prMatrix");
	   // ****** lines object 13 ******
	   var prog13  = gl.createProgram();
	   gl.attachShader(prog13, getShader( gl, "webgl_sample_01vshader13" ));
	   gl.attachShader(prog13, getShader( gl, "webgl_sample_01fshader13" ));
	   //  Force aPos to location 0, aCol to location 1 
	   gl.bindAttribLocation(prog13, 0, "aPos");
	   gl.bindAttribLocation(prog13, 1, "aCol");
	   gl.linkProgram(prog13);
	   var v=new Float32Array([
	    1.964, 1, 0.064,
	    1.964, 6, 0.064,
	    1.964, 1, 0.064,
	    1.9022, 1, 0.002200002,
	    1.964, 2, 0.064,
	    1.9022, 2, 0.002200002,
	    1.964, 3, 0.064,
	    1.9022, 3, 0.002200002,
	    1.964, 4, 0.064,
	    1.9022, 4, 0.002200002,
	    1.964, 5, 0.064,
	    1.9022, 5, 0.002200002,
	    1.964, 6, 0.064,
	    1.9022, 6, 0.002200002
	   ]);
	   var buf13 = gl.createBuffer();
	   gl.bindBuffer(gl.ARRAY_BUFFER, buf13);
	   gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
	   var mvMatLoc13 = gl.getUniformLocation(prog13,"mvMatrix");
	   var prMatLoc13 = gl.getUniformLocation(prog13,"prMatrix");
	   // ****** text object 14 ******
	   var prog14  = gl.createProgram();
	   gl.attachShader(prog14, getShader( gl, "webgl_sample_01vshader14" ));
	   gl.attachShader(prog14, getShader( gl, "webgl_sample_01fshader14" ));
	   //  Force aPos to location 0, aCol to location 1 
	   gl.bindAttribLocation(prog14, 0, "aPos");
	   gl.bindAttribLocation(prog14, 1, "aCol");
	   gl.linkProgram(prog14);
	   var texts = [
	    "1",
	    "2",
	    "3",
	    "4",
	    "5",
	    "6"
	   ];
	   var texinfo = drawTextToCanvas(texts, 1);	 
	   var canvasX14 = texinfo.canvasX;
	   var canvasY14 = texinfo.canvasY;
	   var ofsLoc14 = gl.getAttribLocation(prog14, "aOfs");
	   var texture14 = gl.createTexture();
	   var texLoc14 = gl.getAttribLocation(prog14, "aTexcoord");
	   var sampler14 = gl.getUniformLocation(prog14,"uSampler");
    	   handleLoadedTexture(texture14, document.getElementById("webgl_sample_01textureCanvas"));
	   var v=new Float32Array([
	    1.7786, 1, -0.1214, 0, -0.5, 0.5, 0.5,
	    1.7786, 1, -0.1214, 1, -0.5, 0.5, 0.5,
	    1.7786, 1, -0.1214, 1, 1.5, 0.5, 0.5,
	    1.7786, 1, -0.1214, 0, 1.5, 0.5, 0.5,
	    1.7786, 2, -0.1214, 0, -0.5, 0.5, 0.5,
	    1.7786, 2, -0.1214, 1, -0.5, 0.5, 0.5,
	    1.7786, 2, -0.1214, 1, 1.5, 0.5, 0.5,
	    1.7786, 2, -0.1214, 0, 1.5, 0.5, 0.5,
	    1.7786, 3, -0.1214, 0, -0.5, 0.5, 0.5,
	    1.7786, 3, -0.1214, 1, -0.5, 0.5, 0.5,
	    1.7786, 3, -0.1214, 1, 1.5, 0.5, 0.5,
	    1.7786, 3, -0.1214, 0, 1.5, 0.5, 0.5,
	    1.7786, 4, -0.1214, 0, -0.5, 0.5, 0.5,
	    1.7786, 4, -0.1214, 1, -0.5, 0.5, 0.5,
	    1.7786, 4, -0.1214, 1, 1.5, 0.5, 0.5,
	    1.7786, 4, -0.1214, 0, 1.5, 0.5, 0.5,
	    1.7786, 5, -0.1214, 0, -0.5, 0.5, 0.5,
	    1.7786, 5, -0.1214, 1, -0.5, 0.5, 0.5,
	    1.7786, 5, -0.1214, 1, 1.5, 0.5, 0.5,
	    1.7786, 5, -0.1214, 0, 1.5, 0.5, 0.5,
	    1.7786, 6, -0.1214, 0, -0.5, 0.5, 0.5,
	    1.7786, 6, -0.1214, 1, -0.5, 0.5, 0.5,
	    1.7786, 6, -0.1214, 1, 1.5, 0.5, 0.5,
	    1.7786, 6, -0.1214, 0, 1.5, 0.5, 0.5
	   ]);
	   for (var i=0; i<6; i++) 
	     for (var j=0; j<4; j++) {
	         ind = 7*(4*i + j) + 3;
	         v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i]/width;
	         v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight/height;
	         v[ind] *= texinfo.widths[i]/texinfo.canvasX;
	         v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
	           - v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
	     }
	   var f=new Uint16Array([
	    0, 1, 2, 0, 2, 3,
	    4, 5, 6, 4, 6, 7,
	    8, 9, 10, 8, 10, 11,
	    12, 13, 14, 12, 14, 15,
	    16, 17, 18, 16, 18, 19,
	    20, 21, 22, 20, 22, 23
	   ]);
	   var buf14 = gl.createBuffer();
	   gl.bindBuffer(gl.ARRAY_BUFFER, buf14);
	   gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
	   var ibuf14 = gl.createBuffer();
	   gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf14);
	   gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
	   var mvMatLoc14 = gl.getUniformLocation(prog14,"mvMatrix");
	   var prMatLoc14 = gl.getUniformLocation(prog14,"prMatrix");
	   // ****** lines object 15 ******
	   var prog15  = gl.createProgram();
	   gl.attachShader(prog15, getShader( gl, "webgl_sample_01vshader15" ));
	   gl.attachShader(prog15, getShader( gl, "webgl_sample_01fshader15" ));
	   //  Force aPos to location 0, aCol to location 1 
	   gl.bindAttribLocation(prog15, 0, "aPos");
	   gl.bindAttribLocation(prog15, 1, "aCol");
	   gl.linkProgram(prog15);
	   var v=new Float32Array([
	    1.964, 0.9115, 0.5,
	    1.964, 0.9115, 2.5,
	    1.964, 0.9115, 0.5,
	    1.9022, 0.759575, 0.5,
	    1.964, 0.9115, 1,
	    1.9022, 0.759575, 1,
	    1.964, 0.9115, 1.5,
	    1.9022, 0.759575, 1.5,
	    1.964, 0.9115, 2,
	    1.9022, 0.759575, 2,
	    1.964, 0.9115, 2.5,
	    1.9022, 0.759575, 2.5
	   ]);
	   var buf15 = gl.createBuffer();
	   gl.bindBuffer(gl.ARRAY_BUFFER, buf15);
	   gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
	   var mvMatLoc15 = gl.getUniformLocation(prog15,"mvMatrix");
	   var prMatLoc15 = gl.getUniformLocation(prog15,"prMatrix");
	   // ****** text object 16 ******
	   var prog16  = gl.createProgram();
	   gl.attachShader(prog16, getShader( gl, "webgl_sample_01vshader16" ));
	   gl.attachShader(prog16, getShader( gl, "webgl_sample_01fshader16" ));
	   //  Force aPos to location 0, aCol to location 1 
	   gl.bindAttribLocation(prog16, 0, "aPos");
	   gl.bindAttribLocation(prog16, 1, "aCol");
	   gl.linkProgram(prog16);
	   var texts = [
	    "0.5",
	    "1",
	    "1.5",
	    "2",
	    "2.5"
	   ];
	   var texinfo = drawTextToCanvas(texts, 1);	 
	   var canvasX16 = texinfo.canvasX;
	   var canvasY16 = texinfo.canvasY;
	   var ofsLoc16 = gl.getAttribLocation(prog16, "aOfs");
	   var texture16 = gl.createTexture();
	   var texLoc16 = gl.getAttribLocation(prog16, "aTexcoord");
	   var sampler16 = gl.getUniformLocation(prog16,"uSampler");
    	   handleLoadedTexture(texture16, document.getElementById("webgl_sample_01textureCanvas"));
	   var v=new Float32Array([
	    1.7786, 0.455725, 0.5, 0, -0.5, 0.5, 0.5,
	    1.7786, 0.455725, 0.5, 1, -0.5, 0.5, 0.5,
	    1.7786, 0.455725, 0.5, 1, 1.5, 0.5, 0.5,
	    1.7786, 0.455725, 0.5, 0, 1.5, 0.5, 0.5,
	    1.7786, 0.455725, 1, 0, -0.5, 0.5, 0.5,
	    1.7786, 0.455725, 1, 1, -0.5, 0.5, 0.5,
	    1.7786, 0.455725, 1, 1, 1.5, 0.5, 0.5,
	    1.7786, 0.455725, 1, 0, 1.5, 0.5, 0.5,
	    1.7786, 0.455725, 1.5, 0, -0.5, 0.5, 0.5,
	    1.7786, 0.455725, 1.5, 1, -0.5, 0.5, 0.5,
	    1.7786, 0.455725, 1.5, 1, 1.5, 0.5, 0.5,
	    1.7786, 0.455725, 1.5, 0, 1.5, 0.5, 0.5,
	    1.7786, 0.455725, 2, 0, -0.5, 0.5, 0.5,
	    1.7786, 0.455725, 2, 1, -0.5, 0.5, 0.5,
	    1.7786, 0.455725, 2, 1, 1.5, 0.5, 0.5,
	    1.7786, 0.455725, 2, 0, 1.5, 0.5, 0.5,
	    1.7786, 0.455725, 2.5, 0, -0.5, 0.5, 0.5,
	    1.7786, 0.455725, 2.5, 1, -0.5, 0.5, 0.5,
	    1.7786, 0.455725, 2.5, 1, 1.5, 0.5, 0.5,
	    1.7786, 0.455725, 2.5, 0, 1.5, 0.5, 0.5
	   ]);
	   for (var i=0; i<5; i++) 
	     for (var j=0; j<4; j++) {
	         ind = 7*(4*i + j) + 3;
	         v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i]/width;
	         v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight/height;
	         v[ind] *= texinfo.widths[i]/texinfo.canvasX;
	         v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
	           - v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
	     }
	   var f=new Uint16Array([
	    0, 1, 2, 0, 2, 3,
	    4, 5, 6, 4, 6, 7,
	    8, 9, 10, 8, 10, 11,
	    12, 13, 14, 12, 14, 15,
	    16, 17, 18, 16, 18, 19
	   ]);
	   var buf16 = gl.createBuffer();
	   gl.bindBuffer(gl.ARRAY_BUFFER, buf16);
	   gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
	   var ibuf16 = gl.createBuffer();
	   gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf16);
	   gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
	   var mvMatLoc16 = gl.getUniformLocation(prog16,"mvMatrix");
	   var prMatLoc16 = gl.getUniformLocation(prog16,"prMatrix");
	   // ****** lines object 17 ******
	   var prog17  = gl.createProgram();
	   gl.attachShader(prog17, getShader( gl, "webgl_sample_01vshader17" ));
	   gl.attachShader(prog17, getShader( gl, "webgl_sample_01fshader17" ));
	   //  Force aPos to location 0, aCol to location 1 
	   gl.bindAttribLocation(prog17, 0, "aPos");
	   gl.bindAttribLocation(prog17, 1, "aCol");
	   gl.linkProgram(prog17);
	   var v=new Float32Array([
	    1.964, 0.9115, 0.064,
	    1.964, 6.9885, 0.064,
	    1.964, 0.9115, 2.536,
	    1.964, 6.9885, 2.536,
	    1.964, 0.9115, 0.064,
	    1.964, 0.9115, 2.536,
	    1.964, 6.9885, 0.064,
	    1.964, 6.9885, 2.536,
	    1.964, 0.9115, 0.064,
	    4.436, 0.9115, 0.064,
	    1.964, 0.9115, 2.536,
	    4.436, 0.9115, 2.536,
	    1.964, 6.9885, 0.064,
	    4.436, 6.9885, 0.064,
	    1.964, 6.9885, 2.536,
	    4.436, 6.9885, 2.536,
	    4.436, 0.9115, 0.064,
	    4.436, 6.9885, 0.064,
	    4.436, 0.9115, 2.536,
	    4.436, 6.9885, 2.536,
	    4.436, 0.9115, 0.064,
	    4.436, 0.9115, 2.536,
	    4.436, 6.9885, 0.064,
	    4.436, 6.9885, 2.536
	   ]);
	   var buf17 = gl.createBuffer();
	   gl.bindBuffer(gl.ARRAY_BUFFER, buf17);
	   gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
	   var mvMatLoc17 = gl.getUniformLocation(prog17,"mvMatrix");
	   var prMatLoc17 = gl.getUniformLocation(prog17,"prMatrix");
	   gl.enable(gl.DEPTH_TEST);
	   gl.depthFunc(gl.LEQUAL);
	   gl.clearDepth(1.0);
	   gl.clearColor(1, 1, 1, 1);
	   var xOffs = yOffs = 0,  drag  = 0;
	   drawScene();
	   function drawScene(){
	     gl.depthMask(true);
	     gl.disable(gl.BLEND);
	     var radius = 3.743638;
	     var s = sin(fov*PI/360);
	     var t = tan(fov*PI/360);
	     var distance = radius/s;
	     var near = distance - radius;
	     var far = distance + radius;
	     var hlen = t*near;
	     var aspect = width/height;
	     prMatrix.makeIdentity();
	     if (aspect > 1)
	       prMatrix.frustum(-hlen*aspect*zoom, hlen*aspect*zoom, 
	                        -hlen*zoom, hlen*zoom, near, far);
	     else  
	       prMatrix.frustum(-hlen*zoom, hlen*zoom, 
	                        -hlen*zoom/aspect, hlen*zoom/aspect, 
	                        near, far);
	     mvMatrix.makeIdentity();
	     mvMatrix.translate( -3.2, -3.95, -1.3 );
	     mvMatrix.scale( 1.637417, 0.6660679, 1.637417 );   
	     mvMatrix.multRight( userMatrix );  
	     mvMatrix.translate(0, 0, -distance);
	     gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT);
	     // ****** points object 6 *******
	     gl.useProgram(prog6);
	     gl.bindBuffer(gl.ARRAY_BUFFER, buf6);
	     gl.uniformMatrix4fv( prMatLoc6, false, new Float32Array(prMatrix.getAsArray()) );
	     gl.uniformMatrix4fv( mvMatLoc6, false, new Float32Array(mvMatrix.getAsArray()) );
	     gl.enableVertexAttribArray( posLoc );
	     gl.enableVertexAttribArray( colLoc );
	     gl.vertexAttribPointer(colLoc, 4, gl.FLOAT, false, 28, 12);
	     gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 28,  0);
	     gl.drawArrays(gl.POINTS, 0, 150);
	     // ****** text object 8 *******
	     gl.useProgram(prog8);
	     gl.bindBuffer(gl.ARRAY_BUFFER, buf8);
	     gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf8);
	     gl.uniformMatrix4fv( prMatLoc8, false, new Float32Array(prMatrix.getAsArray()) );
	     gl.uniformMatrix4fv( mvMatLoc8, false, new Float32Array(mvMatrix.getAsArray()) );
	     gl.enableVertexAttribArray( posLoc );
	     gl.disableVertexAttribArray( colLoc );
	     gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
	     gl.enableVertexAttribArray( texLoc8 );
	     gl.vertexAttribPointer(texLoc8, 2, gl.FLOAT, false, 28, 12);
	     gl.activeTexture(gl.TEXTURE0);
	     gl.bindTexture(gl.TEXTURE_2D, texture8);
	     gl.uniform1i( sampler8, 0);
	     gl.enableVertexAttribArray( ofsLoc8 );
	     gl.vertexAttribPointer(ofsLoc8, 2, gl.FLOAT, false, 28, 20);
	     gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 28,  0);
	     gl.drawElements(gl.TRIANGLES, 6, gl.UNSIGNED_SHORT, 0);
	     // ****** text object 9 *******
	     gl.useProgram(prog9);
	     gl.bindBuffer(gl.ARRAY_BUFFER, buf9);
	     gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf9);
	     gl.uniformMatrix4fv( prMatLoc9, false, new Float32Array(prMatrix.getAsArray()) );
	     gl.uniformMatrix4fv( mvMatLoc9, false, new Float32Array(mvMatrix.getAsArray()) );
	     gl.enableVertexAttribArray( posLoc );
	     gl.disableVertexAttribArray( colLoc );
	     gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
	     gl.enableVertexAttribArray( texLoc9 );
	     gl.vertexAttribPointer(texLoc9, 2, gl.FLOAT, false, 28, 12);
	     gl.activeTexture(gl.TEXTURE0);
	     gl.bindTexture(gl.TEXTURE_2D, texture9);
	     gl.uniform1i( sampler9, 0);
	     gl.enableVertexAttribArray( ofsLoc9 );
	     gl.vertexAttribPointer(ofsLoc9, 2, gl.FLOAT, false, 28, 20);
	     gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 28,  0);
	     gl.drawElements(gl.TRIANGLES, 6, gl.UNSIGNED_SHORT, 0);
	     // ****** text object 10 *******
	     gl.useProgram(prog10);
	     gl.bindBuffer(gl.ARRAY_BUFFER, buf10);
	     gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf10);
	     gl.uniformMatrix4fv( prMatLoc10, false, new Float32Array(prMatrix.getAsArray()) );
	     gl.uniformMatrix4fv( mvMatLoc10, false, new Float32Array(mvMatrix.getAsArray()) );
	     gl.enableVertexAttribArray( posLoc );
	     gl.disableVertexAttribArray( colLoc );
	     gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
	     gl.enableVertexAttribArray( texLoc10 );
	     gl.vertexAttribPointer(texLoc10, 2, gl.FLOAT, false, 28, 12);
	     gl.activeTexture(gl.TEXTURE0);
	     gl.bindTexture(gl.TEXTURE_2D, texture10);
	     gl.uniform1i( sampler10, 0);
	     gl.enableVertexAttribArray( ofsLoc10 );
	     gl.vertexAttribPointer(ofsLoc10, 2, gl.FLOAT, false, 28, 20);
	     gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 28,  0);
	     gl.drawElements(gl.TRIANGLES, 6, gl.UNSIGNED_SHORT, 0);
	     // ****** lines object 11 *******
	     gl.useProgram(prog11);
	     gl.bindBuffer(gl.ARRAY_BUFFER, buf11);
	     gl.uniformMatrix4fv( prMatLoc11, false, new Float32Array(prMatrix.getAsArray()) );
	     gl.uniformMatrix4fv( mvMatLoc11, false, new Float32Array(mvMatrix.getAsArray()) );
	     gl.enableVertexAttribArray( posLoc );
	     gl.disableVertexAttribArray( colLoc );
	     gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
	     gl.lineWidth( 1 );
	     gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 12,  0);
	     gl.drawArrays(gl.LINES, 0, 12);
	     // ****** text object 12 *******
	     gl.useProgram(prog12);
	     gl.bindBuffer(gl.ARRAY_BUFFER, buf12);
	     gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf12);
	     gl.uniformMatrix4fv( prMatLoc12, false, new Float32Array(prMatrix.getAsArray()) );
	     gl.uniformMatrix4fv( mvMatLoc12, false, new Float32Array(mvMatrix.getAsArray()) );
	     gl.enableVertexAttribArray( posLoc );
	     gl.disableVertexAttribArray( colLoc );
	     gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
	     gl.enableVertexAttribArray( texLoc12 );
	     gl.vertexAttribPointer(texLoc12, 2, gl.FLOAT, false, 28, 12);
	     gl.activeTexture(gl.TEXTURE0);
	     gl.bindTexture(gl.TEXTURE_2D, texture12);
	     gl.uniform1i( sampler12, 0);
	     gl.enableVertexAttribArray( ofsLoc12 );
	     gl.vertexAttribPointer(ofsLoc12, 2, gl.FLOAT, false, 28, 20);
	     gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 28,  0);
	     gl.drawElements(gl.TRIANGLES, 30, gl.UNSIGNED_SHORT, 0);
	     // ****** lines object 13 *******
	     gl.useProgram(prog13);
	     gl.bindBuffer(gl.ARRAY_BUFFER, buf13);
	     gl.uniformMatrix4fv( prMatLoc13, false, new Float32Array(prMatrix.getAsArray()) );
	     gl.uniformMatrix4fv( mvMatLoc13, false, new Float32Array(mvMatrix.getAsArray()) );
	     gl.enableVertexAttribArray( posLoc );
	     gl.disableVertexAttribArray( colLoc );
	     gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
	     gl.lineWidth( 1 );
	     gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 12,  0);
	     gl.drawArrays(gl.LINES, 0, 14);
	     // ****** text object 14 *******
	     gl.useProgram(prog14);
	     gl.bindBuffer(gl.ARRAY_BUFFER, buf14);
	     gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf14);
	     gl.uniformMatrix4fv( prMatLoc14, false, new Float32Array(prMatrix.getAsArray()) );
	     gl.uniformMatrix4fv( mvMatLoc14, false, new Float32Array(mvMatrix.getAsArray()) );
	     gl.enableVertexAttribArray( posLoc );
	     gl.disableVertexAttribArray( colLoc );
	     gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
	     gl.enableVertexAttribArray( texLoc14 );
	     gl.vertexAttribPointer(texLoc14, 2, gl.FLOAT, false, 28, 12);
	     gl.activeTexture(gl.TEXTURE0);
	     gl.bindTexture(gl.TEXTURE_2D, texture14);
	     gl.uniform1i( sampler14, 0);
	     gl.enableVertexAttribArray( ofsLoc14 );
	     gl.vertexAttribPointer(ofsLoc14, 2, gl.FLOAT, false, 28, 20);
	     gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 28,  0);
	     gl.drawElements(gl.TRIANGLES, 36, gl.UNSIGNED_SHORT, 0);
	     // ****** lines object 15 *******
	     gl.useProgram(prog15);
	     gl.bindBuffer(gl.ARRAY_BUFFER, buf15);
	     gl.uniformMatrix4fv( prMatLoc15, false, new Float32Array(prMatrix.getAsArray()) );
	     gl.uniformMatrix4fv( mvMatLoc15, false, new Float32Array(mvMatrix.getAsArray()) );
	     gl.enableVertexAttribArray( posLoc );
	     gl.disableVertexAttribArray( colLoc );
	     gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
	     gl.lineWidth( 1 );
	     gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 12,  0);
	     gl.drawArrays(gl.LINES, 0, 12);
	     // ****** text object 16 *******
	     gl.useProgram(prog16);
	     gl.bindBuffer(gl.ARRAY_BUFFER, buf16);
	     gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf16);
	     gl.uniformMatrix4fv( prMatLoc16, false, new Float32Array(prMatrix.getAsArray()) );
	     gl.uniformMatrix4fv( mvMatLoc16, false, new Float32Array(mvMatrix.getAsArray()) );
	     gl.enableVertexAttribArray( posLoc );
	     gl.disableVertexAttribArray( colLoc );
	     gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
	     gl.enableVertexAttribArray( texLoc16 );
	     gl.vertexAttribPointer(texLoc16, 2, gl.FLOAT, false, 28, 12);
	     gl.activeTexture(gl.TEXTURE0);
	     gl.bindTexture(gl.TEXTURE_2D, texture16);
	     gl.uniform1i( sampler16, 0);
	     gl.enableVertexAttribArray( ofsLoc16 );
	     gl.vertexAttribPointer(ofsLoc16, 2, gl.FLOAT, false, 28, 20);
	     gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 28,  0);
	     gl.drawElements(gl.TRIANGLES, 30, gl.UNSIGNED_SHORT, 0);
	     // ****** lines object 17 *******
	     gl.useProgram(prog17);
	     gl.bindBuffer(gl.ARRAY_BUFFER, buf17);
	     gl.uniformMatrix4fv( prMatLoc17, false, new Float32Array(prMatrix.getAsArray()) );
	     gl.uniformMatrix4fv( mvMatLoc17, false, new Float32Array(mvMatrix.getAsArray()) );
	     gl.enableVertexAttribArray( posLoc );
	     gl.disableVertexAttribArray( colLoc );
	     gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
	     gl.lineWidth( 1 );
	     gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 12,  0);
	     gl.drawArrays(gl.LINES, 0, 24);
	     gl.flush ();
	   }
	   var vlen = function(v) {
	     return sqrt(v[0]*v[0] + v[1]*v[1] + v[2]*v[2])
	   }
	   var xprod = function(a, b) {
	     return [a[1]*b[2] - a[2]*b[1],
	             a[2]*b[0] - a[0]*b[2],
	             a[0]*b[1] - a[1]*b[0]];
	   }
	   var screenToVector = function(x, y) {
	     var radius = max(width, height)/2.0;
	     var cx = width/2.0;
	     var cy = height/2.0;
	     var px = (x-cx)/radius;
	     var py = (y-cy)/radius;
	     var plen = sqrt(px*px+py*py);
	     if (plen > 1.e-6) { 
	       px = px/plen;
	       py = py/plen;
	     }
	     var angle = (SQRT2 - plen)/SQRT2*PI/2;
	     var z = sin(angle);
	     var zlen = sqrt(1.0 - z*z);
	     px = px * zlen;
	     py = py * zlen;
	     return [px, py, z];
	   }
	   var rotBase;
	   var trackballdown = function(x,y) {
	     rotBase = screenToVector(x, y);
	     saveMat.load(userMatrix);
	   }
	   var trackballmove = function(x,y) {
	     var rotCurrent = screenToVector(x,y);
	     var dot = rotBase[0]*rotCurrent[0] + 
	   	       rotBase[1]*rotCurrent[1] + 
	   	       rotBase[2]*rotCurrent[2];
	     var angle = acos( dot/vlen(rotBase)/vlen(rotCurrent) )*180./PI;
	     var axis = xprod(rotBase, rotCurrent);
	     userMatrix.load(saveMat);
	     userMatrix.rotate(angle, axis[0], axis[1], axis[2]);
	     drawScene();
	   }
	   var y0zoom = 0;
	   var zoom0 = 1;
	   var zoomdown = function(x, y) {
	     y0zoom = y;
	     zoom0 = log(zoom);
	   }
	   var zoommove = function(x, y) {
	     zoom = exp(zoom0 + (y-y0zoom)/height);
	     drawScene();
	   }
	   var y0fov = 0;
	   var fov0 = 1;
	   var fovdown = function(x, y) {
	     y0fov = y;
	     fov0 = fov;
	   }
	   var fovmove = function(x, y) {
	     fov = max(1, min(179, fov0 + 180*(y-y0fov)/height));
	     drawScene();
	   }
	   var mousedown = [trackballdown, zoomdown, fovdown];
	   var mousemove = [trackballmove, zoommove, fovmove];
	   function relMouseCoords(event){
	     var totalOffsetX = 0;
	     var totalOffsetY = 0;
	     var currentElement = canvas;
	     do{
	       totalOffsetX += currentElement.offsetLeft;
	       totalOffsetY += currentElement.offsetTop;
	     }
	     while(currentElement = currentElement.offsetParent)
	     var canvasX = event.pageX - totalOffsetX;
	     var canvasY = event.pageY - totalOffsetY;
	     return {x:canvasX, y:canvasY}
	   }
	   canvas.onmousedown = function ( ev ){
	     if (!ev.which) // Use w3c defns in preference to MS
	       switch (ev.button) {
	       case 0: ev.which = 1; break;
	       case 1: 
	       case 4: ev.which = 2; break;
	       case 2: ev.which = 3;
	     }
	     drag = ev.which;
	     var f = mousedown[drag-1];
	     if (f) {
	       var coords = relMouseCoords(ev);
	       f(coords.x, height-coords.y); 
	       ev.preventDefault();
	     }
	   }    
	   canvas.onmouseup = function ( ev ){	
	     drag = 0;
	   }
	   canvas.onmouseout = canvas.onmouseup;
	   canvas.onmousemove = function ( ev ){
	     if ( drag == 0 ) return;
	     var f = mousemove[drag-1];
	     if (f) {
	       var coords = relMouseCoords(ev);
	       f(coords.x, height-coords.y);
	     }
	   }
	   var wheelHandler = function(ev) {
	     var del = 1.1;
	     if (ev.shiftKey) del = 1.01;
	     var ds = ((ev.detail || ev.wheelDelta) > 0) ? del : (1 / del);
	     zoom *= ds;
	     drawScene();
	     ev.preventDefault();
	   };
	   canvas.addEventListener("DOMMouseScroll", wheelHandler, false);
	   canvas.addEventListener("mousewheel", wheelHandler, false);
	}
</script>
<canvas id="webgl_sample_01canvas" width="1" height="1"></canvas> 
<p id="webgl_sample_01debug">
<img src="webgl_sample_01snapshot.png" alt="webgl_sample_01snapshot" width=505/><br>
	You must enable Javascript to view this page properly.</p>
<script>webgl_sample_01webGLStart();</script>

