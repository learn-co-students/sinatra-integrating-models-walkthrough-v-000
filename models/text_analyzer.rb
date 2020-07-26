class TextAnalyzer
 attr_accessor :text
 
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
  s1 = text.gsub(/[^a-z]/, '')#get rid of spaces
  arr = s1.split("")#turn it into an array
  arr1 = arr.uniq#only show unique values in array
  arr2 = {}#create a new hash
  
  arr1.map{|c| arr2[c] = arr.count(c)}
  #iterate through the unique array and create 
  #a key value pair with the value being the count of the key
  biggest = {arr2.keys.first => arr2.values.first}
  
  arr2.each do |key, value|
   if value > biggest.values.first
     biggest = {}
     biggest[key] = value
   end
  end
  biggest
 end
end