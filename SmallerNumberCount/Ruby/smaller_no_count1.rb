# @param {Integer[]} nums
# @return {Integer[]}
require 'set'

def smaller_numbers_than_current(nums)
    max = nums.max
    min = nums.min
    uniq_ele = nums.to_set.to_a
    counter = []
    nums.each do |num|
       if uniq_ele.length == 1 || num == min
        counter << 0
       elsif num == max
          count = nums.count(num)
          if count > 1
            count = count - 1
          else
            count = 0
          end
          counter << (nums.count - 1 - count)
       else
        count = 0
        nums.select{|ele| count += 1 if ele < num }
        counter << count
       end
    end
    counter
end

puts smaller_numbers_than_current([6,5,4,8])
