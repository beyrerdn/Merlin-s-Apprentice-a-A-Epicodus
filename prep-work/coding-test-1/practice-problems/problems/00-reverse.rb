# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.
#
# Difficulty: easy.

def reverse(string)
  result = ""
  
  idx=string.length - 1
  while idx >= 0
    #start at string.length - 1 and go down to 0.
    
    result = result + string[idx]
    idx -= 1
    
  end
  
  return result
  
end


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s)
puts('reverse("a") == "a": ' + (reverse("a") == "a").to_s)
puts('reverse("") == "": ' + (reverse("") == "").to_s)

