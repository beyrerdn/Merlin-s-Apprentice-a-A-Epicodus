class MyTime
  define_method(:initialize) do |year, month, day|
    @month = month
  end

  def self.months_to_december
    12 - (@month)
  end
end
