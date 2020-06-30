def shuffle(nums, n)
  return 'Enter proper value of divisor' if n < 1 || n > 500
  return 'Entered divisor is not proper' if nums.length != 2*n
  new_arr = []
  for i in 0..(n-1)
    new_arr << nums[i] << nums[n+i]
  end
  new_arr
end

puts shuffle([2,5,1,3,4,7], 3)