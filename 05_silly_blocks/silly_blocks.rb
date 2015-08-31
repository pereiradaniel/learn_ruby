def adder(num_to_add=1)
	num_to_add + yield
end # def adder

def reverser
	yield.split(' ',).each { |word| word.reverse! }.join(' ',)
end # def reverser

def repeater(reps=1)
	reps.times { yield }
end # def repeater