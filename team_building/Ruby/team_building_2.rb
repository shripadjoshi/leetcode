workers = [{'a' => 'b'}, {'b' => 'c'}, {'e' => 'f'}, {'a' => 'd'} , {'g' => 'h'}, {'h' => 'i'}]
puts "The workers are #{workers}"

set_of_workers = workers.map{|w| w.flatten}

groups = [set_of_workers[0]]
set_of_workers.each_with_index do |set, idx|
  next if idx == 0

  # puts "For set [#{set.join(',')}] #{groups.length} and #{groups.each{|grp| grp.join(',')}}"
  groups.each_with_index do |group, index|
	# puts "index #{index} => [#{group.join(',')}] with set => [#{set.join(',')}]"
	unless (set & group).empty?
  	groups[index] = group | set
  	break
	else
  	if index + 1 == groups.length
    	groups << set 	 
  	end
	end
  end
end
puts "The grouped workers are #{groups}"
