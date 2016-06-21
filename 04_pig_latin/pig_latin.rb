def translate (word)
	array = word.split
	trans_word_array = []
	array.each do |i|
		if /[aeiou]/.match(i[0])
			trans_word_array.push(i + "ay")
		elsif i[0].downcase == 'q'
			trans_word_array.push(i[2..-1] + i[0..1] + 'ay')	
		else
			if not /[aeiou]/.match(i[1])
				if not /[aeiou]/.match(i[2])
					trans_word_array.push(i[3..-1] + i[0..2] + 'ay')
				elsif i[1].downcase == 'q'
					trans_word_array.push(i[3..-1] + i[0..2] + 'ay')
				else
					trans_word_array.push(i[2..-1] + i[0..1] + 'ay')
				end
			else
				trans_word_array.push(i[1..-1] + i[0] + 'ay')
			end
		end
	end
	trans_word_array.join(' ')
end