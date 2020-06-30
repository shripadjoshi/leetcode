##Recursive Bubble sort
arr = [50,20,1,8,12,10,9,33,40]
#arr = [50,20,1,-2]
 
def recursive_bubble_sort(arr, count = 0)
 count = count + 1
 arr_length = arr.length
 for i in 0..arr_length-1
   arr[i+1], arr[i] = arr[i], arr[i+1] if !arr[i+1].nil? && arr[i] > arr[i+1]
   break if count == arr_length - 1
   recursive_bubble_sort(arr, count)
 end
 #puts "Sorted array by recurssive bubble sort - #{arr}"
 return arr
end

puts "Sorted array by recursive bubble sort - #{recursive_bubble_sort(arr)}"