ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
require 'capybara'
Bundler.require(:default, ENV['SINATRA_ENV'])

require './app'
