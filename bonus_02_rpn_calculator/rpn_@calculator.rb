class RPNCalculator

   attr_accessor :formula

   def initialize
     @formula = []
   end #def initialize

  def push(formula_obj)
  	@formula.push(formula_obj.to_f)
  end # def push

  def plus
  	if @formula[1] != nil
      evaluation = @formula[-2] + @formula[-1]
      @formula.pop
      @formula.pop
      @formula.push(evaluation.to_f)
    else
      raise "calculator is empty"
    end
  end # def plus

  def minus
  	if @formula[1] != nil
      evaluation = @formula[-2] - @formula[-1]
      @formula.pop
      @formula.pop
      @formula.push(evaluation.to_f)
    else
      raise "calculator is empty"
    end
  end # def plus

  def divide
  	if @formula[1] != nil
      evaluation = @formula[-2] / @formula[-1]
      @formula.pop
      @formula.pop
      @formula.push(evaluation.to_f)
    else
      raise "calculator is empty"
    end
  end # def divide

  def times
  	if @formula[1] != nil
      evaluation = @formula[-2] * @formula[-1]
      @formula.pop
      @formula.pop
      @formula.push(evaluation.to_f)
    else
      raise "calculator is empty"
    end
  end # def divide

  def value
  	return @formula[-1]
  end # def value


  def evaluate(equation)
  	@formula = []
    equation = equation.split(' ',)

    equation.each do
      |thing|
      
      if thing.to_s == "+"
      	self.plus
      elsif thing.to_s == "-"
      	self.minus
      elsif thing.to_s == "/"
      	self.divide
      elsif thing.to_s == "*"
      	self.times
      else
        thing.to_i.class.superclass == Integer
        @formula << thing.to_i.to_f
      end
    end

    return @formula[-1]

  end # evaluate(equation)

  def tokens(string)
    output = []
    string = string.split(' ',)

    string.each do
      |item|

      if item.to_s == "+"
        output.push(item.to_sym)
      elsif item.to_s == "-"
        output.push(item.to_sym)
      elsif item.to_s == "/"
        output.push(item.to_sym)
      elsif item.to_s == "*"
        output.push(item.to_sym)
      else
        output.push(item.to_i)
      end
    end
  return output
  end
end # class RPNCalculator

# @calculator = RPNCalculator.new
# @calculator.push(4)
# @calculator.push(5)
# @calculator.plus
# @calculator.value
