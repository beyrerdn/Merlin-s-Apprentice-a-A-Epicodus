# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  most = 0
  count = 0
  ret_char = ""
  string.chars.each_with_index do |x, index|
    string.chars.each_with_index do |y, idx|
      if x == y
        count += 1
      end
        if count >= most
          most = count
          ret_char = x
        end
    end
  count = 0
  end
  return [ret_char, most]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
