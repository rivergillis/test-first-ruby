def translate (s)
	word = s.split(' ')
	return word.map { |w| fix_single(w) }.join(' ')
end

def fix_single (s)
	vowel = s.index(/[AEIOUaeiou]/)

	if (1...s.length).include?(vowel) #skips first letter
		if (s[vowel].upcase == 'U' && s[vowel - 1].upcase == 'Q') #skips 'qu'
				vowel += 1
		end

		s = s[vowel..(s.length - 1)] + s[0..vowel - 1]
		# splits the word in half using vowel, appends the second have first
	end

	s += "ay"
end
