class Temperature

  attr_accessor :f, :c
	
    def initialize(options={})
	  @f = options[:f]
	  @c = options[:c]
	end # def initialize

	def to_celsius
	  if @c
	    return @c
	  else (@f - 32) * 5.0 / 9.0
	    end
	end # def to_celsius

	def to_fahrenheit
	  if @f
	    return @f
	  else
	    (@c * (9.0 / 5.0)) + 32
	  end
	end

end # class Temperature

class Celsius < Temperature

  def initialize(temp_c)
    @c = temp_c
  end
end

class Fahrenheit < Temperature

  def initialize(temp_f)
    @f = temp_f
  end
end
