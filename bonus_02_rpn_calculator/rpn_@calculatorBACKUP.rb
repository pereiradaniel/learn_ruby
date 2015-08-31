class RPNCalculator

   attr_accessor :formula

   def initialize
     @formula = []
   end #def initialize

  def push(formula_obj)
    self.push(formula_obj.to_f)
  end # def push

  def plus
  	if self.formula[1] != nil
      evaluation = self.formula[-2] + self.formula[-1]
      self.formula.pop
      self.formula.pop
      self.formula.push(evaluation.to_f)
    else
      return "calculator is empty"
    end
  end # def plus

  def minus
  	if self.formula[1] != nil
      evaluation = self.formula[-2] - self.formula[-1]
      self.formula.pop
      self.formula.pop
      self.formula.push(evaluation.to_f)
    else
      return "calculator is empty"
    end
  end # def plus

  def divide
  	if self.formula[1] != nil
      evaluation = self.formula[-2] / self.formula[-1]
      self.formula.pop
      self.formula.pop
      self.formula.push(evaluation.to_f)
    else
      return "calculator is empty"
    end
  end # def divide

  def times
  	if self.formula[1] != nil
      evaluation = self.formula[-2] * self.formula[-1]
      self.formula.pop
      self.formula.pop
      self.formula.push(evaluation.to_f)
    else
      return "calculator is empty"
    end
  end # def divide

  def value
  	return self.formula[-1]
  end # def value


  def evaluate(equation)
  	self.formula = []
    @result = equation.split(' ',)

    @result.each do
      |thing|
      if thing.class.superclass == Integer
      	self.push(thing)
      elsif thing == "+"
      	self.plus
      elsif thing == "-"
      	self.minus
      elsif thing == "/"
      	self.divide
      elsif thing == "*"
      	self.times
      end
    end

    return self.formula[-1]

  end # evaluate(equation)

end # class RPNCalculator

# @calculator = RPNCalculator.new

# @calculator.push(4)
# @calculator.push(5)
# @calculator.plus
# @calculator.value