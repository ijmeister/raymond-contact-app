require 'rubygems'
require 'sinatra'
require 'json'
# require 'rack/recaptcha'
require 'pony'
require 'recaptcha'

# use Rack::Recaptcha, :public_key => '6LdaSSUUAAAAAFGxArpdsrwwfJptJcyl0GiJlfLH', :private_key => '6LdaSSUUAAAAAOmSiLG8ckUpSerSfoftnCN5NC4S'
# helpers Rack::Recaptcha::Helpers

Recaptcha.configure do |config|
  config.site_key  = '6LdaSSUUAAAAAFGxArpdsrwwfJptJcyl0GiJlfLH'
  config.secret_key = '6LdaSSUUAAAAAOmSiLG8ckUpSerSfoftnCN5NC4S'
end

# include Recaptcha::ClientHelper

require './application'
run Sinatra::Application
