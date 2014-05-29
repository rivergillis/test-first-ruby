def add(n1, n2)
	return n1 + n2
end

def subtract(n1, n2)
	return n1 - n2
end

def sum(nums)
	total = 0
	for i in nums
		total += i
	end

	return total
end

def multiply(*nums)
	total = 1
	nums.each {|i| total *= i}

	return total
end

def power(n1, n2)
	return n1 ** n2
end

def factorial(num)
	return 1 if num <= 1

	return num * factorial(num - 1)
end
