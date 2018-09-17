require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

halt 200

end
  post '/' do
    text_from_user = params[:user_text]
    erb :results
    return @analyzed_text
  end
end
