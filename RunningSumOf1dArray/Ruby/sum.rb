# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
    sum = [nums.first]
    nums.each_with_index do |num, index|
        sum << sum.last + num if index != 0
    end
    sum
end


puts running_sum([1,3,2,5,6])