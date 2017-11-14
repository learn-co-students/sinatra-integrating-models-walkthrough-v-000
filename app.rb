require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do #gets data from screen
    erb :index
  end

  post '/' do #posts to screen
    # text_from_user = params[:user_text]
    # @analyzed_text = TextAnalyzer.new(text_from_user)
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    erb :results
  end
end
