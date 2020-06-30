##Find the index of the Vowels in the string
hash = {}
str = "I am shripad joshi"
str.scan(/[aeiou]/){|m| hash[$~.begin(0)] = m }
puts hash
