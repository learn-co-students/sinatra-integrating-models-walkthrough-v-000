require_relative "models/textanalyzer.rb"
require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/results' do
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    erb :results
  end

end
