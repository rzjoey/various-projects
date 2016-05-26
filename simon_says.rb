def echo(string)
return string
end

def shout(string)
return string.upcase
end

def repeat(string, number = 2)
return ((string + " ") * number).strip
end

def start_of_word(string, number)

return string[0...number]
end

def first_word(string)

array = string.split(" ")

return array[0]

end

def titleize(string)
array = string.split(" ")

i = 0

while i < array.length

	if (i > 0) && (array [i] == "and" || array [i] == "the" || array [i] == "over")
			i+= 1
			next
	end

	array[i].capitalize!

i+=1
end

return array.join(" ")
end
