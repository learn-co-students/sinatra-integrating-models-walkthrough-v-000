require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    @common_text = []
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    @analyzed_text.most_used_letter.each do |key, value|
      @common_text += [key.upcase, value]
    end

    erb :results
  end
end
