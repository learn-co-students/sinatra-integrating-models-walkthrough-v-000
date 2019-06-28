# Your TextAnalyzer model code will go here.
class TextAnalyzer
  attr_reader :text
  
  def initialize(text)
    @text = text.downcase
  end 
  
  def count_of_words
    words = text.strip.split(" ") # I added #strip for an edge case.
    words.count 
  end
  
  def count_of_vowels
    text.scan(/[aeiou]/).count 
    # There are probably other ways, but this is quickest/easiest (I think).
  end
  
  def count_of_consonants
    text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
    # I could have tried something like text.scan(/[^aeiou]/), but that would have ALSO picked up numbers, \n, white space, characters, etc.
  end
  
  def most_used_letter
    
  end
end