require_relative 'config/environment'
require_relative 'models/textanalyzer.rb'

class App < Sinatra::Base

get '/' do
  erb :index
end

post '/' do
  # text_from_user = params[:user_text]
  # @analyzed_text = TextAnalyzer.new(text_from_user)

  # or
  @analyzed_text = TextAnalyzer.new(params[:user_text])

  @num_of_words = @analyzed_text.count_of_words
  @vowels = @analyzed_text.count_of_vowels
  @consonants = @analyzed_text.count_of_consonants
  @most_com_letter = @analyzed_text.most_used_letter

  raise @analyzed_text.text.inspect
  erb :results
end


end