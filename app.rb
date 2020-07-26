require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do # renders the index.rb page
    erb :index
  end

  post '/' do # receives the form data through params & renders the results page
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    # text_from_user = params[:user_text]
    #
    # @analyzed_text = TextAnalyzer.new(text_from_user)

    erb :results
  end
end
