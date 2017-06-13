require 'rubygems'
require 'sinatra'
require 'json'
require 'rack/recaptcha'
require 'pony'

use Rack::Recaptcha, :public_key => '6LdaSSUUAAAAAFGxArpdsrwwfJptJcyl0GiJlfLH', :private_key => '6LdaSSUUAAAAAOmSiLG8ckUpSerSfoftnCN5NC4S'
helpers Rack::Recaptcha::Helpers

require './application'
run Sinatra::Application
