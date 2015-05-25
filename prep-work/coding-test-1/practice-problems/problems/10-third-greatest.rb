# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

def third_greatest(nums)
  g1 = 0
  g2 = 0
  g3 = 0
  nums.each do |x|
    if x > g1
      g1 = x
    end
  end
  nums.each do |x|
    if (x<g1) and (x > g2)
      g2 = x
    end
  end
  nums.each do |x|
    if (x<g2) and (x>g3)
      g3 = x
    end
  end
  g3
end
# These are tests to check that your code is working. After writing
# your solution, they should all print true.


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'third_greatest([5, 3, 7]) == 3: ' +
  (third_greatest([5, 3, 7]) == 3).to_s
)
puts(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  (third_greatest([5, 3, 7, 4]) == 4).to_s
)
puts(
  'third_greatest([2, 3, 7, 4]) == 3: ' +
  (third_greatest([2, 3, 7, 4]) == 3).to_s
)
