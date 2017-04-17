require_relative 'config/environment'
require_relative 'models/textanalyzer.rb'

class App < Sinatra::Base

get '/' do
  erb :index
end

post '/' do
  text_from_user = params[:user_text]
	@results = TextAnalyzer.new(text_from_user)
	@most_used_letter = @results.most_used_letter 
  erb :results
end


end
