require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  
  # route 1
  get '/' do
    erb :index
  end

  # route 2
  post '/' do
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    
    erb :results
  end
  
end
