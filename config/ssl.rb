require 'rubygems'
require 'rails/commands/server'
require 'rack'
require 'webrick'
require 'webrick/https'

module Rails
  class Server < ::Rack::Server
    def default_options
      ssl_default_options = {
        :Port => 443,
        :SSLEnable => true,
        :SSLVerifyClient => OpenSSL::SSL::VERIFY_NONE,
        :SSLPrivateKey => OpenSSL::PKey::RSA.new(File.open(File.expand_path('../../server.key', __FILE__)).read),
        :SSLCertificate => OpenSSL::X509::Certificate.new(File.open(File.expand_path('../../server.crt', __FILE__)).read),
        :SSLCertName => [['CN', WEBrick::Utils::getservername]]
      }
      ENV['RAILS_SSL'] ? super.merge(ssl_default_options) : super
    end
  end
end
