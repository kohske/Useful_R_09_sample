(function($) {
    $(document).ready(function() {
	$.fn.scianimator.defaults.theme = 'dark';
	$('#norm-dist').scianimator({
	    'images': ['images/norm-dist1.png', 'images/norm-dist2.png', 'images/norm-dist3.png', 'images/norm-dist4.png', 'images/norm-dist5.png', 'images/norm-dist6.png'],
	    'width': 480,
	    'delay': 100,
	    'loopMode': 'loop',
 'controls': ['first', 'play', 'loop', 'speed']
	});
	$('#norm-dist').scianimator('play');
    });
})(jQuery);
