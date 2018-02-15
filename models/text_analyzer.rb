# Your TextAnalyzer model code will go here.


class TextAnalyzer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def count_of_words
    text.split(" ").length
  end

  def count_of_vowels
    text.scan(/[aeoui]/).count
  end

  def count_of_consonants
    text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end

  # def most_used_letter
  #   letters = text.gsub(/[^a-z]/, '')
  #   arr_letters = letters.split()
  #   letter_count = {}
  #   arr_letters.each do |letter|
  #     letter_count[letter] += 1
  #   end
  #   letter_count_arr = letter_count.to_a
  #   letter_count_arr.enum_with_index.map { |e, i|
  #     mode_letter = ""
  #     if i % 2 == 0
  #       if e >
  #
  #       end
  #     end
  # end

  def most_used_letter
    s1 = text.gsub(/[^a-z]/, '') # gets rid of spaces
    arr = s1.split('')
    arr1 = arr.uniq
    arr2 = {}

    arr1.map do |c|
      arr2[c] =  arr.count(c)
    end

    biggest = { arr2.keys.first => arr2.values.first }

    arr2.each do |key, value|
      if value > biggest.values.first
        biggest = {}
        biggest[key] = value
      end
    end

    biggest
  end
end
