$(document).ready(function(){
	$( ".content_register" ).hide();

	$( ".link" ).click(function() {
		 $("html, body").animate({ scrollTop: $(document).height() }, 900);
		$( ".content_register" ).toggle( 'down', 1000 );
	});


	$( "#register" ).click(function() {
		 $("html, body").animate({ scrollTop: $(document).height() }, 900);
		$( ".content_register" ).toggle( 'down', 1000 );
	});
});