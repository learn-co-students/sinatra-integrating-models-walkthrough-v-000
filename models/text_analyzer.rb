# Your TextAnalyzer model code will go here.
class TextAnalyzer
  attr_reader :text
  def initialize(text)
    @text = text
    @text_array = @text.split('').collect{|c| c.downcase}
  end

  def count
    @text.split(' ').size
  end

  def vowels
    @text_array.select{ |c| c =~ /[aeiou]/ }.count
  end

  def constants
    @text_array.select{ |c| c =~ /[bcdfghjklmnpqrstvwxyz]/ }.count
  end

  def most_used_letter
    used_x_times = 0
    most_used_letter = ''

    @text_array.each do |char|
      count = @text_array.count(char)
      if count > used_x_times && char != ' '
        used_x_times = count
        most_used_letter = char
      end
    end

    {letter: most_used_letter.upcase, used: used_x_times}
  end
end