class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

    def index        
        render :text => "hola"
    end 

    def store_location
        session[:return_to] = request.url
    end
   
    def login_required
        unless session[:user_id]
            store_location
            redirect_to root_url
        end 
        false
    end

    def redirect_back_or_default
        redirect_to(session[:return_to] || home_path)
        session[:return_to] = nil
    end

end
