class TextAnalyzer
  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def count_of_words
    @text.split(" ").count
  end

  def count_of_vowels
    @text.downcase.scan(/[aeoui]/).count
  end

  def count_of_consonants
    @text.downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end

  def most_used_letter
      s1 = @text.downcase.gsub(/[^a-z]/, '') #gets rid of spaces
      arr = s1.split('')
      arr1 = arr.uniq
      arr2 = {}
      arr1.map do |c|
       arr2[c] =  arr.count(c)
      end
      biggest = { arr2.keys.first  => arr2.values.first }
      arr2.each do |key, value|
        if value > biggest.values.first
          biggest = {}
          biggest[key] = value
        end
      end
      biggest
    end

end
