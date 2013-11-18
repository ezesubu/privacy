$(document).ready(function(){
	$( ".content_register" ).hide();

	$( ".link" ).click(function() {
		 $("html, body").animate({ scrollTop: $(document).height() }, 900);
		$( ".content_register" ).slideToggle("slow");
	});


	$( "#register" ).click(function() {
		$("html, body").animate({ scrollTop: $(document).height() }, 900);
		$( ".content_register" ).slideToggle("slow");
	});
});