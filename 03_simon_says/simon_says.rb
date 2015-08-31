def echo(word)
	"#{word}"
end

def shout(word)
	"#{word.upcase}"
end

def repeat(word, reps=2)
	reps = reps.to_i
	output = ""
	reps.times do
		|rep|
		output = output + "#{word} "
	end
	output = output.chop
	return output
end

def first_word(string)
	string = string.split(' ',)
	return string[0]
end

def titleize(string)

	small_words = %w{ and the over }
	string.split.each_with_index.map {
		|word, index|
		small_words.include?(word) && index > 0 ? word : word.capitalize
	}.join(' ')

end

def start_of_word(string, value)
	result = ""
	result << string
	while result.length > value
	break if result.length == value
		result.chop!
	end

	return result

end

