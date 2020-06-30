###Anagram of two words
str1 = 'LISTEN'
str2 = 'SILENT'
 
def anagram(str1, str2)
 return sort_string(str1).eql?(sort_string(str2)) ? 'Anagram Success' : 'Anagram Failure'
end
 
def sort_string(str)
 return str.chars.sort_by(&:downcase).join
end
 
puts anagram(str1, str2)
