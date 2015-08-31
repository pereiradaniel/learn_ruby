class Book

	attr_accessor :title

	def title=(title)
		result = ""
		small_words = %w{a an and in the but or for nor of}

		title = title.split(' ',)

		title.each_with_index do 
			|word, index|

			if small_words.include?(word) && index > 0
				result << word + " "
			elsif
				small_words.include?(word) && index == 0
				result << word.capitalize + " "
			else
				result << word.capitalize + " "
			end
		end

		@title = result.chop!
	end # def title=(title)



end # class book