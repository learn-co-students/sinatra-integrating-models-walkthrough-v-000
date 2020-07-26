require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    # text_from_user = params[:user_text]
    # Pass user input to class instance (model)
    @analzed_text = TextAnalyzer.new(params[:user_text])

    erb :results
  end
end
