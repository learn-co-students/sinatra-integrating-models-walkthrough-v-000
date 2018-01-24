require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
#renders the index.erb page
  get '/' do
    erb :index
  end

#receives the form data through params and renders the results page
  post '/' do
#the instance of TextAnalyzer saved to an instance variable @analyzed_text
#we can call it and its methods from the results.erb view that is being
#rendered, using erb tags   
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    # above line of code simplifies the bottom two lines of code
    # text_from_user = params[:user_text]
    # @analyzed_text = TextAnalyzer.new(text_from_user)

    erb :results
  end
end
