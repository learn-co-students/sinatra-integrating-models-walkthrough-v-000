require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    @letter = @analyzed_text.most_used_letter.keys[0].upcase
    @number = @analyzed_text.most_used_letter.values[0]

    erb :results
  end
end
