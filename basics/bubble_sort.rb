def bubble_sort(unsorted_array)
  swaps = 1
  while swaps != 0
    swaps = 0
    for i in 1..unsorted_array.length-1
      left = unsorted_array[i-1]
      right = unsorted_array[i]
      if left > right
        unsorted_array[i] = left
        unsorted_array[i-1] = right
        swaps += 1
      end
    end
  end
  unsorted_array
end

p bubble_sort([2,3,1])
p bubble_sort([4,3,78,2,0,2])