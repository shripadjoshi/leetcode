arr = [7, 2, 4, 7, 6]
def num_of_less_than(arr, idx=0, target=[])
  return target if idx >= arr.length
  target[idx] = 0
  0.upto arr.length-1 do |i|
	  next if i == idx
	  target[idx] += 1 if arr[idx] > arr[i]
  end
  num_of_less_than(arr, idx+1, target)
end

puts "For the array [#{arr.join(',')}]"
result = num_of_less_than(arr)
puts "Result is [#{result.join(',')}]"
