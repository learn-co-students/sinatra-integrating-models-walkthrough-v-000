class TextAnalyzer
  attr_accessor :text
  
  def initialize(string)
    @text = string.downcase
  end

  def word_count
    @text.split(" ").count
  end

  def vowels
    @text.scan(/[aeiou]/).count
  end

  def consonants
    @text.scan(/[^aeiou\s]/).count
  end

  def max_frequency
    @text.scan(/\w/).inject(Hash.new(0)) { |h,v| h[v] += 1; h }.max_by { |l| l[1] }
  end
end