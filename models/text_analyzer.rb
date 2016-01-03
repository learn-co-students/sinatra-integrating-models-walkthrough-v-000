
class TextAnalyzer

  def initialize(text)
    @text = text
  end

  def text
    @text
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
    s1 = @text.downcase.gsub(/[^a-z]/, '')
    arr = s1.split('')
    arr1 = arr.uniq
    arr2 = {}
    arr1.map do |c|
      arr2[c] = arr.count(c)
    end
    biggest = {
      :most_used_letter => arr2.keys.first,
      :letter_count => arr2.values.first
    }
    arr2.each do |k,v|
      if v > biggest.values[1]
        biggest = {
          :most_used_letter => "",
          :letter_count => ""
        }
        biggest[:most_used_letter] = k
        biggest[:letter_count] = v
      end
    end
    biggest
  end
end