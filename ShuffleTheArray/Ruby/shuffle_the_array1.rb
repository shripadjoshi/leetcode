def shuffle(nums, n)
    return 'Enter proper value of divisor' if n < 1 || n > 500
    return 'Entered divisor is not proper' if nums.length != 2*n
    sliced = nums.each_slice(n).to_a
    new_arr = []
    sliced[0].each_with_index do |e,i|
      new_arr << e << sliced[1][i]
    end
    new_arr
    
end


puts shuffle([2,5,1,3,4,7], 3)