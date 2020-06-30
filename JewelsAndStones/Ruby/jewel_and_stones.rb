def num_jewels_in_stones(j, s)
    count = 0
     j.chars.each do |char|
       count += s.count(char)
     end
     count
 end
 
 puts num_jewels_in_stones("aA" ,"aAAbbbb")
