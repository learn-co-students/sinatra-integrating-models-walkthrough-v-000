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
    #s1 = text.gsub(/[^a-z]/, '') # gets rid of spaces
    full_string = text.gsub(/[^a-z]/, '').split('')
    letters = full_string.uniq
    letters_and_count = {}

    letters.map do |letter|
      letters_and_count[letter] =  full_string.count(letter)
    end

    biggest = { letters_and_count.keys.first => letters_and_count.values.first }

    letters_and_count.each do |key, value|
      if value > biggest.values.first
        biggest = {}
        biggest[key] = value
      end
    end

    biggest
  end
end
