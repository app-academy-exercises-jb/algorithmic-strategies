# Reimplement the bubble sort outlined in the preceding lecture.
# The bubble_sort method should accept an array of numbers and arrange the elements in increasing order.
# The method should return the array.
# Do not use the built-in Array#sort

def bubble_sort(arr)
  arr.each_with_index { |num, idx| 
    (arr[idx+1] && num > arr[idx+1]) ? swapper(arr, idx, idx+1) : nil
  } && bubble_sort(arr) unless is_sorted?(arr)
  
  arr
end

def swapper (arr, idx1, idx2)
  arr[idx2], arr[idx1] = arr[idx1], arr[idx2]
  arr
end

def is_sorted?(arr)
  temp = arr[0]
  arr.all? { |i| i >= temp && temp = i }
end

p bubble_sort([2, 8, 5, 2, 6])      # => [2, 2, 5, 6, 8]
p bubble_sort([10, 8, 7, 1, 2, 3])  # => [1, 2, 3, 7, 8, 10]
