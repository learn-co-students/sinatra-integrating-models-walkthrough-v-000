# Your TextAnalyzer model code will go here.
class TextAnalyzer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def count_of_words
    words = @text.split(" ")
    words.count
  end

  def count_of_vowels
    @text.scan(/[aeiou]/).count
  end

  def count_of_consonants
    @text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end

  def most_used_letter
    s1 = @text.gsub(/[^a-zA-Z]/, '')
    arr = s1.split('')
    arr1 = arr.uniq
    arr2 = {}

    arr1.collect { |c|
      arr2[c] = arr.count(c)
    }

    biggest = {arr2.keys.first => arr2.values.first}

    arr2.each { |key, value|
      if value > biggest.values.first
        biggest.clear[key] = value
      end
    }

    biggest
  end
end
