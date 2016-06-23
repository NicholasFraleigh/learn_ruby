class Temperature
	def initialize (option = {})
		@temp = option
		if @temp == nil
			@temp = Hash.new
		end
	end

	def in_fahrenheit
		temp_f = 0
		if @temp[:f] == nil
			temp_f = (@temp[:c]/ (5.0/9.0)) + 32
		else
			temp_f = @temp[:f]
		end
	end

	def in_celsius
		temp_c = 0
		if @temp[:c] == nil
			temp_c = (@temp[:f] - 32) * (5.0/9.0)
		else
			temp_c = @temp[:c]
		end
		temp_c
	end

	def self.from_celsius(temp_c)
		new :c => temp_c
	end

	def self.from_fahrenheit(temp_f)
		new :f => temp_f
	end
end

class Celsius < Temperature
	def initialize(temp_c)
		super :c => temp_c
	end
end

class Fahrenheit < Temperature
	def initialize(temp_f)
		super :f => temp_f
	end
end
