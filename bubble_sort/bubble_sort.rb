def bubble_sort(array)
  array_length = array.length
  swapped = true
  puts "Original: #{array}"
  until not swapped do 
    swapped = false    
    for index in 1..(array_length - 1)
      if array[index - 1] > array[index]
        array[index], array[index - 1] = array[index - 1], array[index]
        swapped = true
      end
    end
  end
  puts "Sorted:   #{array}"
end

bubble_sort([4,3,78,2,0,2])
bubble_sort([9,8,7,4,2,1])