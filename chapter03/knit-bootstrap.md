<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<title>+/- </title>



<!-- MathJax scripts -->
<script type="text/javascript" src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
</script>

<style type="text/css">

</style>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- jQuery -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>

<!-- bootstrap -->
<link href=https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css rel="stylesheet">
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>

<!-- highlight.js -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/7.3/styles/dark.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/7.3/highlight.min.js"></script>
<script src="https://yandex.st/highlightjs/7.3/languages/r.min.js"></script>

<!-- Manific Popup -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/0.8.9/jquery.magnific-popup.min.js"></script>

<script defer="defer">
// Function to generate the dynamic table of contents
jQuery.fn.generate_TOC = function () {
  var base = $(this[0]);

  var selectors = ['h1', 'h2', 'h3', 'h4'];

  var last_ptr = [{}, {}, {}, {}];

  var anchors = {};

  generate_anchor = function (text) {
    var test = text.replace(/\W/g, '_');

    while(test in anchors){
      //if no suffix, add one
      if(test.match(/_\d+$/) === null){
        test = test + "_2";
      }
      //else generate unique id for duplicates by adding one to the suffix
      else {
        test = test.replace(/_(\d+)$/, function(match, number){ var num=+number+1; return("_" + num) });
      }
    }
    anchors[test]=1;
    return(test);
  }

  $(selectors.join(',')).each(function () {
    var heading = $(this);
    var idx = selectors.indexOf(heading.prop('tagName').toLowerCase());
    var itr = 0;

    while (itr <= idx) {
      if (jQuery.isEmptyObject(last_ptr[itr])) {
        last_ptr[itr] = $('<ul>').addClass('nav');
        if (itr === 0) {
          base.append(last_ptr[itr])
        } else {
          if(last_ptr[itr-1].children('li').length === 0){
            last_ptr[itr-1].append(last_ptr[itr]);
          }
          else {
            last_ptr[itr - 1].children('li').last().append(last_ptr[itr]);
          }
        }
      }
      itr++;
    }
    var anchor = generate_anchor(heading.text());
    heading.attr('id', anchor);
    var a = $('<a>')
    .text(heading.text())
    .attr('href', '#' + anchor);

  var li = $('<li>')
    .append(a);

  last_ptr[idx].append(li);
  for (i = idx + 1; i < last_ptr.length; i++) {
    last_ptr[i] = {};
  }
  });
}
/* run scripts when document is ready */
$(function() {
  "use strict";

  var $window = $(window);
  var $body = $(document.body);

  document.title = $('h1').first().text();

  /* size of thumbnails */
  var thumbsize = "col-md-3";

  var show_code = false;

  var show_output = true;

  var show_figure = true;

  /* included languages */
  var languages = [];

  /* wrap non render_html blocks in divs */
  $('body pre code').each(function(){
    $(this).parent().wrap('<div class="rcode">').wrap('<div class="source">');
  });
  /* Using render_html, so add in code block */
  $('pre.knitr').each(function(){
    $(this).removeClass('knitr');
    if($(this).find('code').length < 1){
      $(this).wrapInner('<code class=' + $(this).attr('class') + '></code>');
    }
  });

  /* style tables */
  $('table').addClass('table table-striped table-bordered table-hover table-condensed');

  /* add toggle panel to rcode blocks */
  $('div.source,div.output,div.message,div.warning,div.error').each(function() {
    var button = $('<h5 class="panel-title">+/- </h5>');

    if($(this).hasClass('source')){
      var code_block = $(this).find('code');
      var lang_type = code_block.attr('class');
      button.text(button.text() + lang_type + ' Code');
      button.addClass('source ' + lang_type);
      languages[lang_type]=0;
      code_block.each(function(i, e) {
        hljs.highlightBlock(e);
      });
      $(this).addClass('panel panel-primary ' + lang_type);
    }
    else if($(this).hasClass('output')){
      button.text(button.text() + 'Output');
      button.addClass('output');
      $(this).addClass('panel panel-success');
    }
    else if($(this).hasClass('message')){
      button.text(button.text() + 'Message');
      button.addClass('message');
      $(this).addClass('panel panel-info');
    }
    else if($(this).hasClass('warning')){
      button.text(button.text() + 'Warning');
      button.addClass('warning');
      $(this).addClass('panel panel-warning');
    }
    else if($(this).hasClass('error')){
      button.text(button.text() + 'Error');
      button.addClass('error');
      $(this).addClass('panel panel-danger');
    }
    $(this).prepend($('<div class="panel-heading toggle" />').append(button));
  });

  /* give images a lightbox and thumbnail classes to allow lightbox and thumbnails TODO: make gallery if graphs are grouped */
  $('div.rimage img').each(function(){

    //remove rimage div
    $(this).unwrap();

    var a = $(this).
      wrap('<a href=# class="media-object pull-left mfp-image thumbnail ' + thumbsize + '"></a>').
      parent();

    var sibs = a.prevUntil('div.rimage,div.media');
    var div = $('<div class="media" />');
    if(sibs.length != 0){
      sibs.addClass('media-body');
      //need to reverse order as prevUntil puts objects in the order it found them
      $(sibs.get().reverse()).wrapAll(div).parent().prepend(a);
    }
    else {
      a.wrap(div);
    }
  });

  $('div.chunk').addClass('media');

  $('.rcode > .panel').addClass('media');
  /* Magnific Popup */
  $(".thumbnail").each(function(){
    $(this).magnificPopup({
      disableOn: 768,
      closeOnContentClick: true,

      type: 'image',
      items: {
        src: $(this).find('img').attr('src'),
      }
    });
  });

  /* add bootstrap classes */
  $('body').wrapInner('<div class="container"><div class="row"><div class="contents">');

  var create_language_links = function(){
    var text='';
    var language;
    for(language in languages){
      if(languages.hasOwnProperty(language)){
        text += '<li><a href=# class="toggle-global source ' + language + '" type="source.' + language + '">' + language + '</a></li>\n';
      }
    }
    return text;
  }

  var navbar =
  '<div class="navbar navbar-fixed-bottom navbar-inverse">\
    <div class="container">\
      <div class="navbar-header">\
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">\
          <span class="icon-bar"></span>\
          <span class="icon-bar"></span>\
          <span class="icon-bar"></span>\
        </button>\
      </div>\
      <div id="bottom-navbar" class="navbar-collapse collapse navbar-responsive-collapse">\
        <ul class="nav navbar-nav navbar-right">\
          <li class="nav"><p class="navbar-text">Toggle</p></li>\
          <li class="dropup">\
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Code <b class="caret"></b></a>\
            <ul class="dropdown-menu">\
              <li class="dropdown-header">Languages</li>'
              + create_language_links() +
              '<li><a href="#" type="all-source" class="toggle-global">All</a></li>\
            </ul>\
          </li>\
          <li class="dropup">\
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Output <b class="caret"></b></a>\
            <ul class="dropdown-menu">\
              <li class="dropdown-header">Type</li>\
                <li><a href="#" type="output" class="toggle-global">Output</a></li>\
                <li><a href="#" type="message" class="toggle-global">Message</a></li>\
                <li><a href="#" type="warning" class="toggle-global">Warning</a></li>\
                <li><a href="#" type="error" class="toggle-global">Error</a></li>\
                <li><a href="#" type="all-output" class="toggle-global">All</a></li>\
            </ul>\
          </li>\
          <li><a href="#" class="toggle-figure">Figures</a></li>\
        </ul>\
      </div><!-- /.nav-collapse -->\
    </div><!-- /.container -->\
  </div>';
  /* add navbar */
  $('.container').append(navbar);

  /* onclick toggle next code block */
  $('.toggle').click(function() {
    $(this).next('pre').slideToggle();
    return false;
  });

  // global toggles
  $('.toggle-global').click(function(){
    var type = $(this).attr('type');
    if(type === 'all-source'){
      for(var language in languages){
        $('li a[type="source.' + language + '"]').click();
      }
    }
    if(type === 'all-output'){
      $('li a[type=output], li a[type=message], li a[type=warning], li a[type=error]').click();
    }
    else {
      if($(this).closest('li').hasClass('active')){
        $('div.' + type).children('pre').slideUp();
      }
      else {
        $('div.' + type).children('pre').slideDown();
      }
    }
    $(this).closest('li').toggleClass('active');
    return false;
  });
  // global toggles figure, this is more complicated than just slideToggle because you have to hide the parent div as well
  $('.toggle-figure').click(function(){
    var imgs = $('.thumbnail img');
    if(imgs.is(":visible")){
      imgs.slideUp(400, function(){ $(this).parent().toggle(); });
    }
    else {
      imgs.parent().show();
      imgs.show();
    }
    $(this).closest('li').toggleClass('active');
    return false;
  });

  /* add footer */
  $('body').wrapInner('<div id="wrap" />');
  $('#wrap').append('<div id="push" />');
  var p = $('p:contains("Author:")');
  var last_p = p.filter(':last');
  last_p.addClass('text-muted').attr('id','credit');
  last_p.append('<p>Styled with <a href="https://github.com/jimhester/knitrBootstrap">knitrBootstrap</a></p>');
  last_p = last_p.wrap('<div id="footer"><div class="container">').parent().parent();
  last_p.appendTo("body");

  $('.container > .row').prepend('<div class="col-md-3"><div id="toc" class="well sidebar sidenav affix hidden-print"/></div>');

  $('.contents').addClass('col-md-offset-3');

  /* table of contents */
  $('#toc').generate_TOC();

  function toggle_block(setting, type){
    if(setting === 'true'){
      $('a.toggle-global.' + type).closest('li').addClass('active');
    }
    else if(setting.length > 0){ //a list of types to toggle
      $('a.toggle-global.' + type).each(function(){
        var has_class = false;
        for(var i = 0;i < setting.length;i++){
          var val = setting[i];
          console.log(val);
          console.log($(this));
          if($(this).hasClass(val)){
            has_class = true;
          }
        }
        console.log(has_class);
        if(has_class){
          $(this).closest('li').addClass('active');
        }
        else {
          $('div.' + $(this).attr('type')).children('pre').hide();
        }
      });
    }
    else {
      $('div.' + type + ' pre').hide();
    }
  }

  toggle_block(show_code, 'source');

  toggle_block(show_output, 'output');

  if(show_figure){
    /* toggle figure button pressed */
    $('li a.toggle-figure').closest('li').addClass('active');
  }
  else {
    /* hide figures */
    $('.thumbnail').hide();
  }

  /* remove paragraphs with no content */
  $('p:empty').remove();

  $body.scrollspy({
    target: '.sidebar',
  });


  //TODO refresh on show/hide
  $window.on('load', function () {
    $body.scrollspy('refresh');
  })

});


</script>
<style>
/* Knitr_bootstrap styles */
#wrap .container-fluid {
  padding: 0;
  overflow: hidden;
}
.toggle{
  text-transform: capitalize;
}

.toggle-global{
  text-transform: capitalize;
}

/* Sticky footer styles */
* {
  margin:0;
}
html,
body {
    height: 100%;
    padding:0 !important;
    /* The html and body elements cannot have any padding or margin. */
    /*overflow-x: hidden;*/
}

/* Wrapper for page content to push down footer */
#wrap {
    min-height: 100%;
    height: auto !important;
    height: 100%;
    /* Negative indent footer by it's height */
    margin: 0 auto -120px;
}

/* Set the fixed height of the footer here */
#push,
#footer {
    height: 120px;
}

#footer {
  text-align: center;
}

/* Top level subheader elements.  These are the first nested items underneath a header element. */
.header li {
  font-size: 20px;
}

/* Makes the font smaller for all subheader elements. */
.sub-header li {
    font-size: 12px;
}

button.thumbnails {
  margin-left:0px;
}

/*
 * Side navigation
 *
 * Scrollspy and affixed enhanced navigation to highlight sections and secondary
 * sections of docs content.
 */

/* By default it's not affixed in mobile views, so undo that */
.sidebar.affix {
  position: static;
}

/* First level of nav */
.sidenav {
  margin-top: 30px;
  margin-bottom: 30px;
  padding-top:    10px;
  padding-bottom: 10px;
  border-radius: 5px;
}

/* All levels of nav */
.sidebar .nav > li > a {
  display: block;
  padding: 5px 20px;
}
.sidebar .nav > li > a:hover,
.sidebar .nav > li > a:focus {
  text-decoration: none;
  border-right: 1px solid;
}
.sidebar .nav > .active > a,
.sidebar .nav > .active:hover > a,
.sidebar .nav > .active:focus > a {
  font-weight: bold;
  background-color: transparent;
  border-right: 1px solid;
}

/* Nav: second level (shown on .active) */
.sidebar .nav .nav {
  display: none; /* Hide by default, but at >768px, show it */
  margin-bottom: 8px;
}
.sidebar .nav .nav > li > a {
  padding-top:    3px;
  padding-bottom: 3px;
  padding-left: 30px;
  font-size: 90%;
}

.sidebar .nav .nav .nav > li > a {
  padding-left: 40px;
}
.sidebar .nav .nav .nav .nav > li > a {
  padding-left: 50px;
}

/* Show and affix the side nav when space allows it */
@media screen and (min-width: 992px) {
  .sidebar .nav > .active > ul {
    display: block;
  }
  /* Widen the fixed sidebar */
  .sidebar.affix,
  .sidebar.affix-bottom {
    width: 213px;
  }
  .sidebar.affix-top,
  .sidebar.affix {
    position: fixed; /* Undo the static from mobile first approach */
    top: 30px;
  }
  .sidebar.affix-bottom {
    position: absolute; /* Undo the static from mobile first approach */
  }
  .sidebar.affix-bottom .sidenav,
  .sidebar.affix .sidenav {
    margin-top: 0;
    margin-bottom: 0;
  }
}
@media screen and (min-width: 1200px) {
  /* Widen the fixed sidebar again */
  .sidebar.affix-bottom,
  .sidebar.affix {
    width: 263px;
  }
}

#toc {
  padding: 10px 0px;
  margin:0;
  border:0;
}


.panel pre {
  border-radius: 0;
  border: 0;
  margin: 0;
  padding: 0;
}
.panel pre code {
  border-radius: 0;
}
/* Magnific Popup CSS */
.mfp-bg {
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: 1042;
  overflow: hidden;
  position: fixed;
  background: #0b0b0b;
  opacity: 0.8;
  filter: alpha(opacity=80); }

.mfp-wrap {
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: 1043;
  position: fixed;
  outline: none !important;
  -webkit-backface-visibility: hidden; }

.mfp-container {
  text-align: center;
  position: absolute;
  width: 100%;
  height: 100%;
  left: 0;
  top: 0;
  padding: 0 8px;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box; }

.mfp-container:before {
  content: '';
  display: inline-block;
  height: 100%;
  vertical-align: middle; }

.mfp-align-top .mfp-container:before {
  display: none; }

.mfp-content {
  position: relative;
  display: inline-block;
  vertical-align: middle;
  margin: 0 auto;
  text-align: left;
  z-index: 1045; }

.mfp-inline-holder .mfp-content,
.mfp-ajax-holder .mfp-content {
  width: 100%;
  cursor: auto; }

.mfp-ajax-cur {
  cursor: progress; }

.mfp-zoom-out-cur,
.mfp-zoom-out-cur .mfp-image-holder .mfp-close {
  cursor: -moz-zoom-out;
  cursor: -webkit-zoom-out;
  cursor: zoom-out; }

.mfp-zoom {
  cursor: pointer;
  cursor: -webkit-zoom-in;
  cursor: -moz-zoom-in;
  cursor: zoom-in; }

.mfp-auto-cursor .mfp-content {
  cursor: auto; }

.mfp-close,
.mfp-arrow,
.mfp-preloader,
.mfp-counter {
  -webkit-user-select: none;
  -moz-user-select: none;
  user-select: none; }

.mfp-loading.mfp-figure {
  display: none; }

.mfp-hide {
  display: none !important; }

.mfp-preloader {
  color: #cccccc;
  position: absolute;
  top: 50%;
  width: auto;
  text-align: center;
  margin-top: -0.8em;
  left: 8px;
  right: 8px;
  z-index: 1044; }

.mfp-preloader a {
  color: #cccccc; }

.mfp-preloader a:hover {
  color: white; }

.mfp-s-ready .mfp-preloader {
  display: none; }

.mfp-s-error .mfp-content {
  display: none; }

button.mfp-close,
button.mfp-arrow {
  overflow: visible;
  cursor: pointer;
  background: transparent;
  border: 0;
  -webkit-appearance: none;
  display: block;
  padding: 0;
  z-index: 1046;
  -webkit-box-shadow: none;
  box-shadow: none; }

button::-moz-focus-inner {
  padding: 0;
  border: 0; }

.mfp-close {
  width: 44px;
  height: 44px;
  line-height: 44px;
  position: absolute;
  right: 0;
  top: 0;
  text-decoration: none;
  text-align: center;
  opacity: 0.65;
  padding: 0 0 18px 10px;
  color: white;
  font-style: normal;
  font-size: 28px;
  font-family: Arial, Baskerville, monospace; }
  .mfp-close:hover, .mfp-close:focus {
    opacity: 1; }
  .mfp-close:active {
    top: 1px; }

.mfp-close-btn-in .mfp-close {
  color: #333333; }

.mfp-image-holder .mfp-close,
.mfp-iframe-holder .mfp-close {
  color: white;
  right: -6px;
  text-align: right;
  padding-right: 6px;
  width: 100%; }

.mfp-counter {
  position: absolute;
  top: 0;
  right: 0;
  color: #cccccc;
  font-size: 12px;
  line-height: 18px; }

.mfp-arrow {
  position: absolute;
  opacity: 0.65;
  margin: 0;
  top: 50%;
  margin-top: -55px;
  padding: 0;
  width: 90px;
  height: 110px;
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0); }

.mfp-arrow:active {
  margin-top: -54px; }

.mfp-arrow:hover,
.mfp-arrow:focus {
  opacity: 1; }

.mfp-arrow:before, .mfp-arrow:after,
.mfp-arrow .mfp-b,
.mfp-arrow .mfp-a {
  content: '';
  display: block;
  width: 0;
  height: 0;
  position: absolute;
  left: 0;
  top: 0;
  margin-top: 35px;
  margin-left: 35px;
  border: medium inset transparent; }
.mfp-arrow:after,
.mfp-arrow .mfp-a {
  border-top-width: 13px;
  border-bottom-width: 13px;
  top: 8px; }
.mfp-arrow:before,
.mfp-arrow .mfp-b {
  border-top-width: 21px;
  border-bottom-width: 21px; }

.mfp-arrow-left {
  left: 0; }
  .mfp-arrow-left:after,
  .mfp-arrow-left .mfp-a {
    border-right: 17px solid white;
    margin-left: 31px; }
  .mfp-arrow-left:before,
  .mfp-arrow-left .mfp-b {
    margin-left: 25px;
    border-right: 27px solid #3f3f3f; }

.mfp-arrow-right {
  right: 0; }
  .mfp-arrow-right:after,
  .mfp-arrow-right .mfp-a {
    border-left: 17px solid white;
    margin-left: 39px; }
  .mfp-arrow-right:before,
  .mfp-arrow-right .mfp-b {
    border-left: 27px solid #3f3f3f; }

.mfp-iframe-holder {
  padding-top: 40px;
  padding-bottom: 40px; }

.mfp-iframe-holder .mfp-content {
  line-height: 0;
  width: 100%;
  max-width: 900px; }

.mfp-iframe-scaler {
  width: 100%;
  height: 0;
  overflow: hidden;
  padding-top: 56.25%; }

.mfp-iframe-scaler iframe {
  position: absolute;
  display: block;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  box-shadow: 0 0 8px rgba(0, 0, 0, 0.6);
  background: black; }

.mfp-iframe-holder .mfp-close {
  top: -40px; }

/* Main image in popup */
img.mfp-img {
  width: auto;
  max-width: 100%;
  height: auto;
  display: block;
  line-height: 0;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  padding: 40px 0 40px;
  margin: 0 auto; }

/* The shadow behind the image */
.mfp-figure:after {
  content: '';
  position: absolute;
  left: 0;
  top: 40px;
  bottom: 40px;
  display: block;
  right: 0;
  width: auto;
  height: auto;
  z-index: -1;
  box-shadow: 0 0 8px rgba(0, 0, 0, 0.6);
  background: #444444; }

.mfp-figure {
  line-height: 0; }

.mfp-bottom-bar {
  margin-top: -36px;
  position: absolute;
  top: 100%;
  left: 0;
  width: 100%;
  cursor: auto; }

.mfp-title {
  text-align: left;
  line-height: 18px;
  color: #f3f3f3;
  word-wrap: break-word;
  padding-right: 36px; }

.mfp-figure small {
  color: #bdbdbd;
  display: block;
  font-size: 12px;
  line-height: 14px; }

.mfp-image-holder .mfp-content {
  max-width: 100%; }

.mfp-gallery .mfp-image-holder .mfp-figure {
  cursor: pointer; }

@media screen and (max-width: 800px) and (orientation: landscape), screen and (max-height: 300px) {
  /**
   * Remove all paddings around the image on small screen
   */
  .mfp-img-mobile .mfp-image-holder {
    padding-left: 0;
    padding-right: 0; }

  .mfp-img-mobile img.mfp-img {
    padding: 0; }

  /* The shadow behind the image */
  .mfp-img-mobile .mfp-figure:after {
    top: 0;
    bottom: 0; }

  .mfp-img-mobile .mfp-bottom-bar {
    background: rgba(0, 0, 0, 0.6);
    bottom: 0;
    margin: 0;
    top: auto;
    padding: 3px 5px;
    position: fixed;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box; }

  .mfp-img-mobile .mfp-bottom-bar:empty {
    padding: 0; }

  .mfp-img-mobile .mfp-counter {
    right: 5px;
    top: 3px; }

  .mfp-img-mobile .mfp-close {
    top: 0;
    right: 0;
    width: 35px;
    height: 35px;
    line-height: 35px;
    background: rgba(0, 0, 0, 0.6);
    position: fixed;
    text-align: center;
    padding: 0; }

  .mfp-img-mobile .mfp-figure small {
    display: inline;
    margin-left: 5px; } }
@media all and (max-width: 900px) {
  .mfp-arrow {
    -webkit-transform: scale(0.75);
    transform: scale(0.75); }

  .mfp-arrow-left {
    -webkit-transform-origin: 0;
    transform-origin: 0; }

  .mfp-arrow-right {
    -webkit-transform-origin: 100%;
    transform-origin: 100%; }

  .mfp-container {
    padding-left: 6px;
    padding-right: 6px; } }
.mfp-ie7 .mfp-img {
  padding: 0; }
.mfp-ie7 .mfp-bottom-bar {
  width: 600px;
  left: 50%;
  margin-left: -300px;
  margin-top: 5px;
  padding-bottom: 5px; }
.mfp-ie7 .mfp-container {
  padding: 0; }
.mfp-ie7 .mfp-content {
  padding-top: 44px; }
.mfp-ie7 .mfp-close {
  top: 0;
  right: 0;
  padding-top: 0; }

//Magnific overrides
.mfp-image img{
  background: white;
}
.mfp-figure:after {
  background: white;
}

</style>

 

</head>

<body>
<h2>knitによるHTMLレポート生成</h2>

<p>平均とは</p>

<ul>
<li>\(\frac{1}{n}\sum_{i}x_i\)ということです。</li>
<li>例えば1から10までの平均は<code class="knitr inline">5.5</code>です。</li>
</ul>

<h3>乱数の生成</h3>

<p>10000個の正規乱数を生成して平均値を求めます。</p>

<div class="chunk" id="unnamed-chunk-1"><div class="rcode"><div class="source"><pre class="knitr r">set.seed(42)
x <- rnorm(10000)
mean(x)
</pre></div>

<div class="output"><pre class="knitr r">## [1] -0.01131
</pre></div>

<p></div></div></p>

<h3>ヒストグラム</h3>

<p>正規乱数をヒストグラムとカーブフィッティングにより可視化します。</p>

<div class="chunk" id="knit-sample-fig-01"><div class="rcode"><div class="rimage default"><img src="data:image/png;base64,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" title="plot of chunk knit-sample-fig-01" alt="plot of chunk knit-sample-fig-01" class="plot" /></div>

<p></div></div></p>

</body>

</html>
