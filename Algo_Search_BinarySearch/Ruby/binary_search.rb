###Binary Search
 
 
arr = [1, 8, 9, 10, 12, 20, 33, 40, 50, 51]
arr = [-3,1,3,33,44, 55]
search = 44
 
def binary_search(arr, key)
 arr_start = 0
 arr_end = arr.length - 1
 
 median = ((arr_start + arr_end) / 2.0).ceil
 
 if arr.length <= 0
   puts "Search un-successful, no element found"
 elsif arr[median] == key
   puts "Search successful"
 elsif key < arr[median]
   binary_search(arr[arr_start, median], key)
 elsif key > arr[median]
   binary_search(arr[median+1, arr_end], key)
 else
   puts "Search un-successful, no element found"
 end
end
 
binary_search(arr, search)
