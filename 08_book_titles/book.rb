class Book
	def initialize(title=nil)
		@title = title
	end

	def title=(new_title)
		forbidden = ["a", "an","and", "but", "or", "for", "nor", "on", "at", "to", "from", "by", "of", "the", "over", "in"]	
		@title = ''
		title_array = new_title.split
		new_array = []
		new_array.push(title_array.shift.capitalize)
		title_array.each do |i|
			short_word = false
			forbidden.each do |j|
				if i == j
					short_word = true
				end
			end
			if short_word
				new_array.push(i)
			else
				new_array.push(i.capitalize)
			end
		end
		@title = new_array.join(' ')
	end

	def title
		@title
	end
end