require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    text_from_user = params[:user_text]
    results = TextAnalyzer.new(text_from_user)
    @count_of_words=results.count_of_words
    @count_of_vowels=results.count_of_vowels
    @count_of_consonants=results.count_of_consonants
    @max_letter = results.most_used_letter[0].upcase
    @max_letter_number = results.most_used_letter[1]
    erb :results
  end
end
