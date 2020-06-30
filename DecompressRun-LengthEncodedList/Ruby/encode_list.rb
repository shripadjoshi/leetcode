# @param {Integer[]} nums
# @return {Integer[]}
def decompress_rl_elist(nums)
    splited = [nums]
    splited = nums.each_slice(2).to_a if nums.length > 2
    decompress = []
    splited.each do |elements|
        decompress << [elements[1]]*elements[0]
    end
    decompress.flatten
end
  
puts decompress_rl_elist([1,2,3,4])