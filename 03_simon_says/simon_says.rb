def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, num = 2)
	new_word = ''
	for i in 1..num 
		new_word = new_word + word
		if (i < num)
			new_word = new_word + " "
		end
	end
	new_word
end

def start_of_word(word, num)
	first_letters = ''
	for i in 0...num
		first_letters += word[i]
	end
	first_letters
end

def first_word(word)
	array = word.split()
	array[0]
end

def titleize (word)
	forbidden = ["a", "an","and", "but", "or", "for", "nor", "on", "at", "to", "from", "by" "of", "the", "over"]
	array = word.split()
	new_word = ''
	
	array.each do |i|
		small = false
		if new_word == ''
			new_word = i.capitalize
		else
			forbidden.each do |j|
				if i == j
					small = true
				end
			end
			if not small
				new_word += ' ' + i.capitalize
			else
				new_word += ' ' + i
			end
		end
	end
	new_word
end

titleize("how can I do this")