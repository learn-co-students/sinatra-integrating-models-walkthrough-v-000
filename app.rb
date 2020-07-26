require_relative 'config/environment'
require_relative 'models/text_analyzer.rb' #gives us the ability to create new instances of TextAnalyzer class from within the controller

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    @analyzed_text = TextAnalyzer.new(params[:user_text]) #instace of TextAnalyzer saved to an instance variable; now able to call it and its methods from results.erb
    erb :results
  end
end
