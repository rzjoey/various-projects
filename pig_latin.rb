def translate(sentence)

words = sentence.split(" ")
i=0
i2=0



words.each { | word |

i2=0

if word.start_with?("a", "e", "i", "o" , "u")
words[i] = word + "ay"
i+=1
next
end

if word.include?("qu")
data = word.index("q")
edit = word[0..data+1]
words[i] = words[i].gsub!(/#{edit}/, "") + edit + "ay"
i+=1
next
end

new_word = ""
begin

new_word += word[i2]
i2+=1

end until word[i2] == "a" || word[i2] == "e" || word[i2] == "i" || word[i2] == "o" || word[i2] == "u"

words[i] = words[i].sub!(/#{new_word}/, "") + new_word + "ay"
i+=1


}



return words.join(" ")

end
