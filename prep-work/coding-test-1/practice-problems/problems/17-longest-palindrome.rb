# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substrings* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.
#
# Note that the entire string may itself be a palindrome.
#
# You may want to use Array's `slice(start_index, length)` method,
# which returns a substring of length `length` starting at index
# `start_index`:
#
#     "abcd".slice(1, 2) == "bc"
#     "abcd".slice(1, 3) == "bcd"
#     "abcd".slice(2, 1) == "c"
#     "abcd".slice(2, 2) == "cd"
#
# Difficulty: hard.

def palindrome?(string)
  rev = string.reverse
  if rev == string
    return true
  else
    return false
  end
end

def longest_palindrome(string)
  start_index = 0
  length = 2
  longest = ""
  
  #start_index loop
  while start_index < string.length
    #length loop
    while length <= string.length
      #evaluate palendrome
      sub_str = string.slice(start_index, length)
      if palindrome?(sub_str)
        if sub_str.length > longest.length
          longest = sub_str
        end
      end
      length += 1
    end
    start_index += 1
    length = 2
  end
  return longest
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'longest_palindrome("abcbd") == "bcb": ' +
  (longest_palindrome('abcbd') == 'bcb').to_s
)
puts(
  'longest_palindrome("abba") == "abba": ' +
  (longest_palindrome('abba') == 'abba').to_s
)
puts(
  'longest_palindrome("abcbdeffe") == "effe": ' +
  (longest_palindrome('abcbdeffe') == 'effe').to_s
)
