# @param {Integer[]} nums
# @param {Integer[]} index
# @return {Integer[]}
def create_target_array(nums, index)
    target = []
    0.upto(nums.size - 1) do |idx|
        target.insert index[idx], nums[idx]
    end
    target
end

nums = [0,1,2,3,4]
index = [0,1,2,2,1]

puts create_target_array(nums, index).inspect