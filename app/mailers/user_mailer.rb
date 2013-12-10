class UserMailer < ActionMailer::Base
    include SendGrid
    default :from => 'no-reply@nethub.co'
    sendgrid_enable   :ganalytics, :opentrack
  

    def send_register_confirmation user,url
        
        sendgrid_category "User register"
        @user = user        
        @url = url_for(:controller => 'user', :action => 'register_confirmation',  :host => url, :user_token => @user['id'])
        mail :to =>  user['identifiers']['email'], :subject => "Confirmation register"
    end

    def send_reclamo user_reclamo        
        @user_reclamo = user_reclamo
        mail :to => user_reclamo.reclamo.email, :subject => "Reclamo #{user_reclamo.reclamo.asunto}"
    end
   
end
