class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
    before_filter  :login_required, :only => [:terms]
    @token

    def index        
        render 'index'
    end 

    def store_location
        session[:return_to] = request.url
    end
   
    def login_required        
        unless session[:token_nethub]
            redirect_to root_url
        end
    end

    def redirect_back_or_default
        redirect_to(session[:return_to] || home_path)
        session[:return_to] = nil
    end
    def terms        
        render :file => 'privacy.html.rb'
    end

end
