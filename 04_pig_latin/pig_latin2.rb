def translate(string)
	alpha = ('a'..'z').to_a
	vowels = %w[a e i o u]
	consonants = alpha - vowels
	counter = 0
	result = ""
	# Turns string into an array of words
	string = string.split(' ',)

	# Check each word and translate it

	string.each do
		|word|

		# Detects if current word begins with a value
		if vowels.include?(word[0])
			result = result + word + 'ay '
		# Detects if current word begins with consonants
		elsif 
			consonants.include?(word[0])
			word = word.split('',)
				word.each_with_index do
					|letr, index|
					if vowels.include?(letr)
						counter = index
					else
					end
				end # word.each
			
			word.join('')
			word = word[counter..-1] + word[0..counter] + 'ay '
			result = result + word
		end # if vowels.include?
	end # string.each

	# if vowels.include?(string[0])
	# 	string + 'ay'
	# elsif consonants.include?(string[0]) && consonants.include?(string[1])
	# 	string[2..-1] + string[0..1] + 'ay'
	# elsif consonants.include?(string[0])
	# 	string[1..-1] + string[0] + 'ay'
	# else
	# 	string
	# end
result.chop!

end

def single_word_trans(word)

end