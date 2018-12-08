# Your TextAnalyzer model code will go here.
class TextAnalyzer 
  attr_reader :text 
  
  def initialize(text)
    @text = text.downcase
  end 
  
  def count_of_words
    text.split(" ").select {|word| word.match(/\w/)}.count
  end 
  
  def count_of_vowels
    text.scan(/[aeiou]/).count
  end 
  
  def count_of_consonants 
    text.scan(/[^aeiou\W\d_-]/).count
  end 
  
  def most_used_letter
    s1 = text.gsub(/[^a-z]/, '')
    
    arr = s1.split('')
    arr1 = arr.uniq 
    arr2 = {}
    
    #creating an array of hashes that contain letter keys and values of their count in arr.
    arr1.map do |c|
      arr2[c] = arr.count(c)
    end 
    
    biggest = {
      arr2.keys.first => arr2.values.first
    }
    
    arr2.each do |key, value|
      if value > biggest.values.first
        biggest = {}
        biggest[key] = value 
      end 
    end 
    biggest
  end 
end 