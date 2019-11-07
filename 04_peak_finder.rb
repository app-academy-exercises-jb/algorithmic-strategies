# Write a method, peak_finder(arr), that accepts an array of numbers as an arg.
# The method should return an array containing all of "peaks" of the array.
# An element is considered a "peak" if it is greater than both it's left and right neighbor.
# The first or last element of the array is considered a "peak" if it is greater than it's one neighbor.

def peak_finder(arr)
  return arr.select.with_index { |i, idx|
    if idx == 0
      i > arr[1] ? true : false
    elsif arr[idx+1] == nil
      i > arr[-2] ? true : false
    else
      i > arr[idx+1] && i > arr[idx-1] ? true : false
    end
  }
end


p peak_finder([1, 4, 3, 5, 4])         # => [4, 5]
p peak_finder([4, 2, 3, 6, 10])     # => [4, 10]
p peak_finder([4, 2, 11, 6, 10])    # => [4, 11, 10]
