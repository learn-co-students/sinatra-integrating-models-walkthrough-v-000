class TextAnalyzer

  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def count_of_words
    @text.split(" ").count
  end

  def count_of_vowels
    @text.scan(/[aeoui]/).count
  end

  def count_of_consonants
    @text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end

  def most_used_letter
    gsubstuff = @text.downcase.gsub(/[^a-z]/, '')
    toarray = gsubstuff.split("")
    tohash = {}
    toarray.each do |letter|
      tohash[letter] = toarray.count(letter)
    end
    tohash = tohash.sort
    tohash[0]
  end

end
