number = 222
 
def reverse_number(num)
 rev_num = 0; 
 while (num > 0) do
     rev_num = rev_num * 10 + num % 10
     num = num / 10
 end
 return rev_num
end
 
def is_palindrom?(number)
 number == reverse_number(number)
end
 
puts is_palindrom?(number)
