combination = [
 ["David", "Adam"],
 ["John", "Laura"],
 ["Alax", "John"],
 ["Laura", "Evin"]
]
teams = []
combination.each do |combi|
 
 if teams.empty?
   teams << combi
 else
   index_val = -1
   combi.each do |c|
     teams.each_with_index do |team, index|
       if team.include?(c)
        index_val = index
        break
       end
     end
     break if index_val > -1
   end
   teams << combi if index_val == -1
   teams[index_val] << combi if index_val > -1
 end
end
 
puts teams.map{|t| (t.flatten).uniq.sort}.inspect
