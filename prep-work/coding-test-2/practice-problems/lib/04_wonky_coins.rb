# Catsylvanian money is a strange thing: they have a coin for every
# denomination (including zero!). A wonky change machine in
# Catsylvania takes any coin of value N and returns 3 new coins,
# valued at N/2, N/3 and N/4 (rounding down).
#
# Write a method `wonky_coins(n)` that returns the number of coins you
# are left with if you take all non-zero coins and keep feeding them
# back into the machine until you are left with only zero-value coins.
#
# Difficulty: 3/5

def wonky_coins(n)
  coin_array = []
  if n > 0
    coin_array += [n/2, n/3, n/4]
  elsif n == 0
    coin_array << n
  end
    zero_coin_array = coin_array.map{|number| number > 0 ? [number/2, number/3, number/4] : 0}.flatten
      if zero_coin_array.count{|x| x > 0} > 0
        zero_coin_array = zero_coin_array.map{|number| number > 0 ? [number/2, number/3, number/4] : 0}.flatten
          return zero_coin_array.count(0)
      else
          return zero_coin_array.count(0)
      end
end
