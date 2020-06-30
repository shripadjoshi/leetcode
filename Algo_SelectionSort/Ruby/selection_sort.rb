####Selection Sort
 
arr = [50,20,12,10,9,33,40]
def selection_sort(arr)
 arr_length = arr.length
 for i in 0..arr_length-1
   min_index = i
   for j in (i+1)..arr_length-1
     min_index = j if arr[j] < arr[min_index]
   end
   arr[min_index], arr[i] = arr[i], arr[min_index]
 end
 puts "Sorted array by selection sort - #{arr}"
end
 
selection_sort(arr)
