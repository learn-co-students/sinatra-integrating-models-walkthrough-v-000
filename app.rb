require_relative 'config/environment'
require_relative 'models/textanalyzer.rb'
require 'pry'
class App < Sinatra::Base

get '/' do
  text_from_user = params[:user_text]
  erb :index
end

post '/' do
  @anlyzed_text = TextAnalyzer.new(params[:user_text])
  binding.pry
  erb :results
end


end
