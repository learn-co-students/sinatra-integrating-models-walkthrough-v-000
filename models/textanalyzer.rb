class TextAnalyzer
  attr_reader :text
 
  def initialize(text)
    @text = text
  end
 
  def count_of_words
    words = @text.split(" ")
    words.count
  end
 
  def count_of_vowels
    @text.downcase.scan(/[aeoui]/).count
  end
 
  def count_of_consonants
		@text.downcase.scan(/[^aeiou\i\s!]/).count		
  end

	def most_used_letter
		if count_of_consonants > count_of_vowels
			count_of_consonants.max_by{|k,v|v}
		else
			count_of_vowels.max_by{|k,v|v}
		end
	end
end
