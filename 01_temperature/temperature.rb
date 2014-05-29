def ftoc(fahr)
	#	convert fahrenheit to celsius
	return ((fahr - 32.0) * 5.0) / 9.0
end

def ctof(cels)
	# convert celsius to fahrenheit
	return ((cels * 9.0) / 5.0) + 32.0
end
