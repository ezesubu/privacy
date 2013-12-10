$(document).ready(function(){
		$("#registerForm").validate({
			rules: {
				name: {
					required: true,
					minlength: 2
				},
				last_name: {
					required: true,
					minlength: 2
				},
				cedula: {
					required: true,
					minlength: 7	
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


		$("#signupForm").validate({
			rules: {
				login_email: {
					required: true,
					minlength: 5
				},
				login_password: {
					required: true,
					minlength: 5
				}

			},
				errorPlacement: function(error, element) { }
		});


	});