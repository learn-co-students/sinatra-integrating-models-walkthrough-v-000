require_relative 'config/environment'
require_relative 'models/textanalyzer.rb'

class App < Sinatra::Base

  get '/' do
    erb :index
  end


  post '/' do

    erb :results
    end

end