require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'
set :bind, ENV["Host_IP"]
set :port, ENV["HOST_PORT"]
class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
        @analyzed_text = TextAnalyzer.new(params[:user_text])
    erb :results
  end
end
