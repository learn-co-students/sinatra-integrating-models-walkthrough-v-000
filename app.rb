require_relative 'config/environment'
require_relative 'models/text_analyzer.rb' #pulls in the model we made so we can make one here

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    @analyzed_text=TextAnalyzer.new(params[:user_text]) #pass the user_text to the analyzer so the methods can be accessed in erb view
    erb :results
  end
end
