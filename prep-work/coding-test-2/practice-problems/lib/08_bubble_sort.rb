# Write a function `bubble_sort(arr)` which will sort an array of
# integers using the "bubble sort"
# methodology. (http://en.wikipedia.org/wiki/Bubble_sort)
#
# Difficulty: 3/5

=begin
class Array
  # swap index of a & b of caller array
  # pry>  [1, 2, 3, 4, 5].swap!(0, 4)
  # pry>  [5, 2, 3, 4, 1]
  def swap!(a, b)
    self[a], self[b] = self[b], self[a]
    self
  end
end
=end

def bubble_sort(arr)
  n = arr.length
  index = 0
  swapped = true
  until swapped == false
    while index <= n
      if arr[index] > (arr[index+1] or 0)
        arr[index], arr[index + 1] = arr[index+1], arr[index]
        swapped = true
      else
        swapped = false
      end
      index += 1
    end
  end
arr    
end
