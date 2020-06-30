arr = [50,20,1,8,12,10,9,33,40]
#arr = [50,20,1,-2]
 
def insertation_sort(arr)
 arr_length = arr.length
 for i in 1..arr_length-1
   j = i
   while j > 0
     if !arr[j-1].nil? && arr[j - 1] > arr[j]
       arr[j], arr[j - 1] = arr[j - 1] , arr[j]
     else
       break
     end
     #puts "Iteration I - #{i} - J - #{j} - #{arr}"
     j = j - 1
   end
 end
 puts "Sorted array by insertion sort - #{arr}"
end
 
insertation_sort(arr)
