# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.
#
# Difficulty: medium.

# You may use our `is_prime?` solution.
def is_prime?(number)
  count = 0
  n = 2
  if number > 1
    while n < 100
      if number%n == 0
        count +=1
      end
      if count > 1
        break
      end
      n += 1
    end
  else
    return false
  end
  #check count for prime
  if count == 1
    #not prime
    return true
  elsif count > 1
    return false
  else
    nil
  end
end

def nth_prime(n)
  count = 0
  i = 2
  while count < n
    if is_prime?(i) == true
      count += 1
        if count == n
          return i
        end
    end
    i += 1
  end
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nth_prime(1) == 2: ' + (nth_prime(1) == 2).to_s)
puts('nth_prime(2) == 3: ' + (nth_prime(2) == 3).to_s)
puts('nth_prime(3) == 5: ' + (nth_prime(3) == 5).to_s)
puts('nth_prime(4) == 7: ' + (nth_prime(4) == 7).to_s)
puts('nth_prime(5) == 11: ' + (nth_prime(5) == 11).to_s)
