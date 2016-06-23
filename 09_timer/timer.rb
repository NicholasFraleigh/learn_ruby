class Timer
	def initialize
		@seconds = 0
	end

	def seconds=(time)
		@seconds = time
	end

	def seconds
		@seconds
	end

	def time_string
		time = ''
		time_left = @seconds

		if @seconds / 3600 > 9
			time += (@seconds / 3600).to_s + ":"
		else 
			time += "0" + (@seconds / 3600).to_s + ":"
		end

		time_left = @seconds % 3600

		if time_left / 60 > 9
			time += (time_left / 60).to_s + ":"
		else
			time += "0" + (time_left / 60).to_s + ":"
		end

		time_left = time_left % 60

		if time_left > 9
			time += time_left.to_s
		else
			time += "0" + time_left.to_s
		end
	end
end