require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'
require_relative "models/text_analyzer.rb"
require 'pry'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    # text_from_user = params[:user_text]
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    @letter = @analyzed_text.most_used_letter.first
    erb :results
  end
end
