def add(x, y)
return x + y
end

def subtract(x, y)
return x-y
end

def sum(array)
result = 0
array.each {|i| result += i}

return result

end


def multiply(*number)
i = 0
array = []
puts number.length

while i < number.length
array << number[i]
i+=1
end

result = 1
array.each {|i| result *= i}
return result

end


def power(x, y)
	return x**y
end

def factorial(number)

if number == 0 || number == 1
	return 1
end

result = 1
	
while number > 1

	result *= number

number -= 1

end

return result

end
