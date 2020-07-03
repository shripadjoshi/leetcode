# @param {Integer[]} nums
# @return {Integer}
def find_numbers(nums)
    count = 0
    nums.each {|num| num.to_s.length.even? ? count += 1 : ''}
    count
end

nums = [12,345,24,6,7896]

puts find_numbers(nums)