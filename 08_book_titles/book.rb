class Book
	attr_reader :title

	def title=(title)
		@title = titleize(title)
	end

	def titleize(s)
	small_words = ['a', 'of', 'and', 'is', 'to', 'the', 'as', 'at', 'but', 'by', 'for', 'if', 'in', 'or', 'an', 'over']
	words = s.split(' ')

	words.each do |word|
		badword = false
		small_words.each do |small|
			if (word == small)
				badword = true
			end
		end

		word.capitalize! if (badword == false)
	end
	words[0].capitalize!

	return words.join(' ')
	end

end
