class Book

def title=(title)
i = 0
modified = title.split(" ")

modified[0] = modified[0].capitalize!

modified.each { |word| 

if word == "the" || word == "a" || word == "and" || word == "in" || word == "of" || word == "an"
next
end


word.capitalize!}

@title = modified.join(" ")

end

def title
@title

end

end





@book = Book.new

@book.title = "inferno"

puts @book.title
