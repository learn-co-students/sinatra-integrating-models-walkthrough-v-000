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
    # Next time, I'll try to figure this out on my own. Given the complexity, I'll use their solution for now.
    # However, I think I'll rename a few of the variables, for the sake of semantics. And I'll use a method or two that makes a bit more sense.
    
    s1 = text.gsub(/[^a-z]/, '') # gets rid of spaces
    arr = s1.split('') # array of letters
    arr1 = arr.uniq # UNIQUE array of letters
    letter_hash = {} # This will contain each letter from the @text string and the number of times it appears.
    
    arr1.each do |letter| # Remember: letter is a VARIABLE, but its value is the KEY.
      letter_hash[letter] = arr.count(letter)
    end
    
    # biggest = { letter_hash.keys.first => letter_hash[letter_hash.keys.first] }
    # That ^^^ works, but this is equivalent:
    # biggest = { letter_hash.keys.first => letter_hash.values.first }
    # 
    # letter_hash.each do |key, value|
    #   if value > biggest.values.first 
    #     biggest = {}
    #     biggest[key] = value 
    #     # Or, you could do biggest = {key => value}
    #   end 
    # end
    # 
    # biggest
    
    # I think I found a quicker way than above ^^^, with less code:
    most_common = letter_hash.sort_by{ |key, value| value }.last # Returns an array containing the letter that appears the most and its corresponding number of appearances. Ex: ["f", 13]
    
    biggest = { most_common.first => most_common.last }
  end
end