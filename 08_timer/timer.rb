class Timer

	attr_accessor :seconds

	def seconds(seconds=0)
		@seconds = seconds
	end

	def time_string
		return Time.at(@seconds).utc.strftime("%H:%M:%S")
	end #timestring


end # class Timer