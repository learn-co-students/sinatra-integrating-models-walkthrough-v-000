#your text analyzer model code will go here.
class TextAnalyzer

  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def count_of_words
    @text.split(" ").count
  end

  def count_of_vowels
    @text.downcase.scan(/[aeiou]/).count
  end

  def count_of_consonants
    @text.downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end

  def most_used_letter
    letters = @text.downcase.split("").select{|char| !char.strip.empty?}
    letter_tally = {}
    letters.each do |letter|
      letter_included = letter_tally.keys.include?(letter)
      if !letter_included
        letter_tally[letter] = 1
      else
        letter_tally[letter] += 1
      end
    end
    most_used_letter = letter_tally.sort_by{|key, val| val}.last
    most_used_array = letter_tally.select{|key, val| val == most_used_letter[1]}.to_a
    most_used_array.first
  end

end
