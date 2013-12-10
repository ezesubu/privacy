require 'oauth2'
class Token
    #belongs_to :user
       	DASHBOARD_SETTINGS = {
            :site => "https://api.nethub.co/",
            #:site => "http://10.0.0.154:8080/",
            :token_url => '/oauth2/token/',
            :oauth_version => 2
        }
  

    # def self.find_or_create_from_access_token(user,access_token)
    #   secret = access_token.respond_to?(:secret) ? access_token.secret : nil
    #   if user             
    #        self.create!(:_type=>self.to_s,:token=>access_token.token, :secret=>secret, :user=>user)
    #   else
    #      user = User.where("consumer_tokens._type"=>self.to_s,"consumer_tokens.token"=>access_token.token)
    #      if user
    #        user.consumer_token.detect{|t| t.token==access_token.token && t.is_a?(self)}
    #      else
    #        user = User.new
    #        self.create!(:_type=>self.to_s,:token=>access_token.token, :secret=>secret, :user=>user)
    #        user.save!
    #        user.consumer_tokens.last
    #      end
    #   end
    # end

    def self.consumer(options={})
        @client ||= OAuth2::Client.new('3fa6Iiz4pvxTa2Z8oM1H', '90442761702029525331384879907', DASHBOARD_SETTINGS.merge(options))
    end

    def self.save_token(user, token)
        find_or_create_from_access_token(user,token)
    end

end
