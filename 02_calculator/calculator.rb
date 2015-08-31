def add(*nums)
	nums.inject(0) { |sum, num| sum += num }
end

def subtract(num1, num2)
	num1 - num2
end

def sum(nums)
	nums.inject(0) { |sum, num| sum += num }
end

def multiply(nums)
	nums.inject(1) { |sum, num| sum = sum * num }
end

def factorial(big_num)
	
	# Detects if computing a factorial of 0
	if big_num < 1
		x = 0
		return x
	else
	# Builds array of numbers for factorial calculation
		factorial_array = []
		big_num.downto(1) { |num| factorial_array << num }
	end

	x = 1
	
	factorial_array.each do
		|num|	
		x = (num * x)
	end

	return x
	
end