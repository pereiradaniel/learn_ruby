def translate(string)
	alpha = ('a'..'z').to_a
	vowels = %w[a e i o u]
	phenom = %w[q]
	consonants = alpha - vowels - phenom
	
	@result = ""
	# Turns string into an array of words
	
	string = string.split(' ',)

	# Check each word and translate it

	string.each do
		|word|

		# Detects if current word begins with a value
		if vowels.include?(word[0])
			word = translate_for_vowels(word)
			pass_into_result(word)
		# Detects if current word begins with consonants
		elsif 
			consonants.include?(word[0]) #and NOT phenom.include?(word[1])
			word = translate_for_consonants(word)
			pass_into_result(word)
		# Detects if current word begins with "qu" fol by a vowel
		elsif
			phenom.include?(word[0]) && vowels.include?(word[2])
			word = translate_for_vowels(word[2..-1] + word[0..1])
			pass_into_result(word)
		# Detects if current word begins with "qu" fol by a cons
		elsif
			phenom.include?(word[0]) && consonants.include?(word[2])
			word = translate_for_consonants(word[2..-1] + word[0..1])
			pass_into_result(word)
		else
		end
	end # string.each

return @result.chop!
end

def translate_for_vowels(word)
	word = word + 'ay'
	return word
end

def translate_for_consonants(word)
	vowel_index = word.index(/[aeiou]/)
	# Detects for a q after the first letter and before first vowel
	if word[vowel_index-1] != "q"
		word = word[vowel_index..-1] + word[0..vowel_index-1] + 'ay'
		return word
	else
	# If there is a q following the first consonant
		word = word[3..-1] + word[0..2] + 'ay'
		return word
	end
end

def pass_into_result(word)
	# puts "pass #{word}"
	@result << word + " "
end

# qureshi = "qureshi"
# translate(qureshi)

# puts "#{@result}"

# quiet = "quiet"
# translate(quiet)

# puts "#{@result}"

# square = "square"
# translate(square)

# puts "#{@result}"