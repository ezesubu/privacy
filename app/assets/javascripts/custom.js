$(document).ready(function(){
	$( ".content_register" ).hide();
	$( ".content_que_es" ).hide();
	$( ".content_privacy" ).hide();

	$( ".link" ).click(function() {
		 $("html, body").animate({ scrollTop: $(document).height() }, 900);
		$( ".content_register" ).slideToggle("slow");
	});


	$( "#register" ).click(function() {		
		if($($( ".content_que_es" )).is(":visible")){
			$( ".content_que_es" ).slideToggle("slow");
		}
		if($($( ".content_privacy" )).is(":visible")){
			$( ".content_privacy" ).slideToggle("slow");
		}
		
		$("html, body").animate({ scrollTop: $(document).height() }, 900);
		$( ".content_register" ).slideToggle("slow");
	});


	$( "#que_es" ).click(function() {
		if($($( ".content_register" )).is(":visible")){
			$( ".content_register" ).slideToggle("slow");
		}
		if($($( ".content_privacy" )).is(":visible")){
			$( ".content_privacy" ).slideToggle("slow");
		}
		
		$("html, body").animate({ scrollTop: $(document).height() }, 900);
		$( ".content_que_es" ).slideToggle("slow");
		
	});

	$( "#privacidad" ).click(function() {
		if($($( ".content_register" )).is(":visible")){
			$( ".content_register" ).slideToggle("slow");
		}
		if($($( ".content_que_es" )).is(":visible")){
			$( ".content_que_es" ).slideToggle("slow");
		}		
		$("html, body").animate({ scrollTop: $(document).height() }, 900);
		$( ".content_privacy" ).slideToggle("slow");
	});
});
