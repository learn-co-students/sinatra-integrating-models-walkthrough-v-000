require_relative 'config/environment'
require_relative 'models/text_analyzer.rb' #added to allow our controller access to our modules(methods)

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    @analyzed_text = TextAnalyzer.new(params[:user_text])
  erb :results
  end
end
