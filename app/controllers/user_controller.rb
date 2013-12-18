class UserController < ApplicationController
	before_filter  :login_required, :only => [:my_data]
	
	def create
		_user={}
		if params
			_user['first_name'] = params[:name] if params[:name]
			_user['last_name'] = params[:last_name] if params[:last_name]
			_user['identifiers'] = {}
			_user['identifiers']['email'] = params[:email]  if params[:email]  
			_user['identifiers']['cedula'] = params[:cedula] if params[:cedula]			
			_user['privacy'] = params[:password] if params[:password]
			_user['state'] = 'inactive'
			begin
				tokenConsumer = Token.consumer
				token = tokenConsumer.client_credentials.get_token({}, {"auth_scheme" => "request_body"})                        
	            response = token.post('/person/', {body:  _user.to_json}).parsed
	            binding.pry
	            if response['success'] = true	            	
	            	_user['id'] = response['id']
	            	url = request.host	            	
                	UserMailer.send_register_confirmation(_user, url).deliver
	            	flash[:valid] = "Usuario creado correctamente";
	            	redirect_to root_path
	            else
	            	flash[:error] = response['msg']
	            	redirect_to root_path
	            end
	         rescue => e
                flash[:error] =e.message
                redirect_to root_path
            end
		end
	end

	def my_data
		dasboardConsumer = Token.consumer
        if session[:token_nethub]
        	token_data = session[:token_nethub].clone
            token = OAuth2::AccessToken.from_hash(dasboardConsumer, token_data)
            response = token.get('me')
            @me = response.parsed['data'][0]
        end		
	end
end
