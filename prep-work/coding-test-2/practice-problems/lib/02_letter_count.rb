# Write a function, `letter_count(str)` that takes a string and
# returns a hash mapping each letter to its frequency. Do not include
# spaces.
#
# Difficulty: 1/5
def letter_count(str)
  letters_hash = {}
  letters_array = str.split("")
  
  letters_array.delete(" ")
  
  letters_array.each {|x| letters_hash[x] = (letters_hash[x] or 0) + 1}
  letters_hash
end
