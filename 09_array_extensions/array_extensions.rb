class Array

	attr_accessor :sum

	def sum
		return self.inject(0) {|sum, num| sum += num }
	end # def sum

	def square
		return self.map { |num| num**2 }
	end # def square

	def square!
		return self.map! { |num| num**2 }
	end # def square

end # class Array