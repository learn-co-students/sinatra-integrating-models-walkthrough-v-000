require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    @word_count = @analyzed_text.count_of_words
    @vowell_count = @analyzed_text.count_of_vowels
    @cons_count = @analyzed_text.count_of_consonants
    
    max_hash = @analyzed_text.most_used_letter
    
    @max_letter = max_hash.keys[0].to_s.upcase
    @letter_occurs = max_hash.values[0].to_s
    
    # "#{@max_letter}"
    # "#{@letter_occurs}"
    
    erb :results
  end
end
