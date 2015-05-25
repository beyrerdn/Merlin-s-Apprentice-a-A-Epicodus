# Write a method that takes a string and returns the number of vowels
# in the string. You may assume that all the letters are lower cased.
# You can treat "y" as a consonant.
#
# Difficulty: easy.

#Both work

def count_vowels(string)  
  count = 0
  string.chars.each {|letter|
    if (letter == "a")||(letter == "e")||(letter == "i")||(letter == "o")||(letter == "u")
      count += 1
    else 
      count += 0
    end}
  count 
end

=begin
def count_vowels(string)
  count = 0
  i = 0
  while i < string.length
    if (string[i] == "a")||(string[i] == "e")||(string[i] == "i")||(string[i] == "o")||(string[i] == "u")
      count += 1
    else 
      count += 0
    end
    i += 1
  end
  
  count
      
end
=end


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('count_vowels("abcd") == 1: ' + (count_vowels('abcd') == 1).to_s)
puts('count_vowels("color") == 2: ' + (count_vowels('color') == 2).to_s)
puts('count_vowels("colour") == 3: ' + (count_vowels('colour') == 3).to_s)
puts('count_vowels("cecilia") == 4: ' + (count_vowels('cecilia') == 4).to_s)
