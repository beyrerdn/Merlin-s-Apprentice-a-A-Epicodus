# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)
  num_str = num.to_s

  result = ""
  idx = 0
  while idx<num_str.length
    digit=num_str[idx].to_i
    
    if idx>0
      prev_digit = num_str[idx-1].to_i
        if (digit%2 == 1)||(prev_digit%2 == 1)
          result += "-"
        end
    end
    result += num_str[idx]
    idx += 1
  end
end

        
# These are tests to check that your code is working. After writing
# your solution, they should all print true.

=begin
def dasherize_number(num)
  #digit = ""
  #result = ""
  numbers_str = num.to_s
  numbers_str.chars.each_with_index do |number, index|
    if index == 0
      if number.to_i%2 != 0
        numbers_str.insert(index+1, "-")
      end
      
    elsif index == numbers_str.length - 1
      if number.to_i%2 !=0
        numbers_str.insert(index-1, "-")
      end
      
    else
      if number.to_i%2 !=0
        numbers_str.insert(index+1, "-")
        numbers_str.insert(index-1, "-")
      end
    end
  end
  numbers_str
end
=end

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
