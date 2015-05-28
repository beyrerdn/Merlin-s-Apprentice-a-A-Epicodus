class Vehicle
  define_method(:initialize) do |make, model, year|
    @year = year
    @make = make
  end

  define_method(:age) do
    current_year = Time.new().year
    current_year - @year
  end

  define_method(:worth_buying?) do
    american_cars = ["Chrysler", "Ford", "GM"]
    american = american_cars.include?(@make)
    new_enough = age <= 15 #refactored from self.age...
    (american) & (new_enough)
  end
end

#self is the implicit object for all methods under
#the Vehicle class, so when applying methods we can
#include or omit self.
