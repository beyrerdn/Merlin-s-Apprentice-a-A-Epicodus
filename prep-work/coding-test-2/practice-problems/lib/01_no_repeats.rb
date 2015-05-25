# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.
#
# Difficulty: 1/5

def has_repeats?(year)
  year_array = year.to_s.split("")
  year_array.map {|x| year_array.count(x) > 1 ? true : false }.any?
end
def no_repeats(year_start, year_end)
    good_years_array = []
    (year_start..year_end).map{|i| i}.each do |x|
      has_repeats?(x) == false ? good_years_array << x : next
    end
    good_years_array
end
