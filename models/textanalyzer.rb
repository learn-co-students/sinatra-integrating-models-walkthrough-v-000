class TextAnalyzer
  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def count_of_words
    @text.split(" ").count
  end

  def count_of_cowels
    @text.downcase.scan(/[aeiou]/).count
  end

  def count_ofconstanants
    @text.downcase.scan(/[bcdfghjklmnpqrstvwxyz]/)
  end

  def most_used_letter
    all_letters = @text.downcase.gsub(/[^a-z]/, '').split('')
    letters_to_compare = all_letters.uniq
    most_used_letter = ""
    letter_count = 0

    letters_to_compare.map do |letter|
      letter_repititions = all_letters_in_string.count(letter)
      if letter_repetitions > letter_count
        letter_count = letter_repetitions
        most_used_letter = letter
      end
    end
    biggest = [most_used_letter, letter_count]
  end
end
