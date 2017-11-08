class TextAnalyzer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def count_of_words
    self.text.split(" ").count
  end

  def count_of_vowels
    self.text.scan(/[aeiou]/).count
  end

  def count_of_consonants
    self.text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end

  def most_used_letter
    self.text.split(" ").join("").split("")

    letter_comparison={}
    letters_to_check = self.text.split(" ").join("").split("").uniq
    letters_to_check.each do |letter|
      text.split(" ").join("").split("").select {|x| x == letter }.length
      letter_comparison[letter]=text.split(" ").join("").split("").select {|x| x == letter }.length
    end
    max_letter="a"
    max_letter_number=0

    letter_comparison.each {|key,value|
      if value>max_letter_number
        max_letter=key
        max_letter_number=value
      end
    }
    most_used_letter =[max_letter,max_letter_number]
    
  end


end
