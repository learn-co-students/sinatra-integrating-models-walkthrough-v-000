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
    letters = @text.downcase.gsub(/[^a-z]/, '').split('')
    keys = letters.uniq
    letters_count = {}
    keys.each { |k| letters_count[k] = letters.count(k) }
    most_used = letters_count.sort_by { |letter, count| count }.last

    {:most_used_letter => most_used[0].upcase, :letter_count => most_used[1]}
  end

end
