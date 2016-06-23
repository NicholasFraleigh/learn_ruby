class Dictionary
	def initialize
		@dictionary_object = {}
	end

	def entries
		@dictionary_object
	end

	def add(entry)
		if entry.is_a? Hash 
			@dictionary_object.merge!(entry)
		else
			@dictionary_object.merge!("#{entry}" => nil)
		end
	end

	def keywords
		@dictionary_object.keys.sort
	end

	def include? (key)
		@dictionary_object.include?(key)
	end

	def find(key)
		if @dictionary_object.empty?
			{}
		elsif @dictionary_object.include?(key)
			@dictionary_object
		else
			@dictionary_object.select {|h| h.start_with? key}
		end
	end

	def printable
		string_array = []
		@dictionary_object.each do |key, value|
			string_array.push("[#{key}] \"#{value}\"")
		end
		string_array.sort.join("\n")
	end
end