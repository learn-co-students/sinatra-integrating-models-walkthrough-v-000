require_relative 'config/environment'
require_relative 'models/textanalyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    @count_w = @analyzed_text.count_of_words
    @count_v = @analyzed_text.count_of_vowels
    @count_c = @analyzed_text.count_of_consonants
    @mcl = @analyzed_text.most_used_letter

    erb :results
  end
end
