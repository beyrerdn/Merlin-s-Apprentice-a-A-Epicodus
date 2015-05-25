# Write a function, `nearest_larger(arr, i)` which takes an array and an
# index.  The function should return another index, `j`: this should
# satisfy:
#
# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j2]`.
#
# In case of ties (see example below), choose the earliest (left-most)
# of the two indices. If no number in `arr` is larger than `arr[i]`,
# return `nil`.
#
# Difficulty: 2/5
require "pry-byebug"

def nearest_larger(array, idx)
  
  current_largest = nil
  current_largest_index = 0
  target_number = array[idx]
  
  array.each_with_index do |x, i|
    
    current_distance_from_target = (idx - i).abs
    current_largest_distance_from_target = (idx - current_largest_index).abs
    
    if  x > target_number and (current_largest == nil or x < current_largest)
      #if current_distance_from_target <= current_largest_distance_from_target
        #current_largest = x
        #current_largest_index = i    
      #elsif current_distance_from_target > current_largest_distance_from_target
        current_largest = x
        current_largest_index = i
      #end
    end
  end
  current_largest == nil ? nil : current_largest_index
end

