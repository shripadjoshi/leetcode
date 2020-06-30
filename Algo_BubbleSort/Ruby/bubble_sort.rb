##Bubble Sort
 
arr = [50,20,1,8,12,10,9,33,40]
#arr = [50,20,1,-2]
def bubble_sort(arr)
 arr_length = arr.length
 for i in 0..arr_length-1
   for j in 0..arr_length-i-1
     arr[j+1], arr[j] = arr[j], arr[j+1] if !arr[j+1].nil? && arr[j] > arr[j+1]
     # puts "Iteration #{i+1} - #{j+1} - #{arr}"
   end
 end
 puts "Sorted array by bubble sort - #{arr}"
end
 
bubble_sort(arr)
