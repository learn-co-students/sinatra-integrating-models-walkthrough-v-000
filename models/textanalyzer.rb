#your text analyzer model code will go here.
class TextAnalyzer

  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def word_count
    @text.split(' ').length
  end

  def vowel_count
    @text.downcase.scan(/[aeiou]/).length
  end

  def consonant_count
    @text.downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).length
  end

  def mcl
    letter_hash = {}
    result = {}
    @text.upcase.gsub(/\s/,'').split('').each do |letter|
      if letter_hash[letter] == nil
        letter_hash[letter] = 1
      else
        letter_hash[letter] += 1
      end
      # puts letter_hash
    end
    # puts letter_hash
    maximum = letter_hash.values.max
    # puts letter_hash.key(maximum)
    result[letter_hash.key(maximum)] = maximum
    # puts result
    result
  end
end
