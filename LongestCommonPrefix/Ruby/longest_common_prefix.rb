arr = ["geeksforgeeks", "geeks", "geek", "geezer"]
 
def longest_common_prefix(arr, prefix = '')
 return 'No array elements' if arr.empty?
 prefix = arr.sort[0] if prefix.empty?
 return prefix if (arr.all? { |word| word.start_with?(prefix) })
 prefix = prefix.chop
 return 'No common prefix found' if prefix.empty?
 longest_common_prefix(arr, prefix)
end
 
puts longest_common_prefix(arr)
