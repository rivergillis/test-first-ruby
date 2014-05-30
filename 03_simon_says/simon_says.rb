def echo(word)
	return word
end

def shout(word)
	return word.upcase
end

def repeat(word, count = 2)
	final = word
	(1..count - 1).each {|i| final += " #{word}"}
	
	return final
end

def start_of_word(word, count)
	return word[0...count]
end

def first_word(word)
	s = word.split(' ')
	return s[0]
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
