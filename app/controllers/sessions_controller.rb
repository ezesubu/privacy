class SessionsController < ApplicationController

	
	def create
        begin
            dasboardConsumer = Token.consumer
            if session[:token_nethub]
                token_data = session[:token_nethub].clone
                token = OAuth2::AccessToken.from_hash(dasboardConsumer, token_data)
            else
    	       	email = params[:login_email]
                password = params[:login_password]
                token = dasboardConsumer.password.get_token(email, password,{"auth_scheme" => "request_body", :privacy => password })
                session[:token_nethub] = token.to_hash
            end
            if token
                redirect_to welcome_url
            else
                flash[:error] = "No se encuentra el usuario"
                render 'index' 
            end
        rescue=> e
            flash[:error] = e.message
            render 'index' 
        end
	end

    def log_out
        reset_session
        redirect_to root_path
    end

end
