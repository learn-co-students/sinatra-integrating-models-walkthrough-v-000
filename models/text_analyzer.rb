class TextAnalyzer
  attr_reader :text
  def initialize(text)
    @text = text.downcase
  end
 
  def count_of_words
    words = text.split(" ")
    words.count
  end
 
  def count_of_vowels
    text.scan(/[aeoui]/).count
  end
 
  def count_of_consonants
    text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end
 
  def most_used_letter
    array = text.gsub(/[^a-z]/, '').split('')
    array.each_with_object(Hash.new(0)) { |v, h| h[v] += 1 }.max_by(&:last)
  end
end
