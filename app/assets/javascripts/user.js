$(document).ready(function(){
		$("#signupForm").validate({
			rules: {
				name: {
					required: true,
					minlength: 2
				},
				password: {
					required: true,
					minlength: 5
				},
				confirm_password: {
					required: true,
					minlength: 5,
					equalTo: "#password"
				},
				email: {
					required: true,
					email: true
				}

			},
				errorPlacement: function(error, element) { }
		});


	});