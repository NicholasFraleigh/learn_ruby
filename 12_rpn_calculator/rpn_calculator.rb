class RPNCalculator
	def initialize
		@stack = []
	end

	def push(num)
		@stack.push(num)
	end

	def plus
		raise "calculator is empty" if @stack.empty?
		@stack.push(@stack.pop + @stack.pop)	
	end

	def minus
		raise "calculator is empty" if @stack.empty?
		@stack.push(-@stack.pop + @stack.pop)
	end

	def divide
		raise "calculator is empty" if @stack.empty?
		denominator = @stack.pop.to_f
		numerator = @stack.pop.to_f
		@stack.push(numerator / denominator)
	end

	def times
		raise "calculator is empty" if @stack.empty?
		@stack.push(@stack.pop * @stack.pop)
	end

	def value
		@stack.at(-1)
	end

	def tokens(token_string)
		token_array = []
		string_array = token_string.split
		string_array.each do |i|
			if i.match(/[^\d]/)
				token_array.push(i.to_sym)
			else 
				token_array.push(i.to_i)
			end
		end
		token_array
	end

	def evaluate(string)
		token_array = tokens(string)
		token_array.each do |i|
			if i.class == Fixnum
				@stack.push(i)
			else
				operand = check_operand(i)
				self.send(operand)
			end
		end
		@stack.at(-1)
	end

	def check_operand(operand)
		operand = case operand
		when :+
			:plus
		when :-
			:minus
		when :*
			:times
		when :/
			:divide
		else
			raise "invalid operand #{operand}"
		end
	end
end