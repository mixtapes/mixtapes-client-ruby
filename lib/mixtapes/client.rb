require 'mixtapes/client/version'
require 'oauth2'

module Mixtapes
  class Client
    attr_reader :client
    
    def initialize(client_id, client_secret, redirect_uri)
      @client = OAuth2::Client.new(client_id, client_secret, site: 'http://mixtapes-api.dev')
      @redirect_uri = redirect_uri
      @token = nil
    end
    
    def authorize_url
      @client.auth_code.authorize_url(redirect_uri: @redirect_uri)
    end
    
    # Set this via a controller, based on the response we get from Mixtapes.
    def token=(token)
      @token = token
    end
    
    def connection
      @token
    end
    
    delegate :get, to: :connection    
  end
end
