class SessionsController < ApplicationController
	
	layout "application"

	def index			
	end

	def create
		email = params[:login_email]
        password = params[:login_password]
        dasboardConsumer = Token.consumer
        token = dasboardConsumer.client_credentials.get_token({}, {"auth_scheme" => "request_body"})       
        response = token.get('/person/login/'+password+'/email/'+email)
        binding.pry
	end

end
