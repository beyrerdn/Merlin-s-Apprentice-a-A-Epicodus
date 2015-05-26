class Array
  def my_uniq
    uniq_array = []
    self.each_with_index do |number, index|
      if uniq_array.include?(number) == false
        uniq_array << number
      end
    end
    uniq_array
  end
  
  def zero_sum
    sum_array = []
    self.each_with_index do |number,index|
      self.each_with_index do |num, idx|
        if (number + num == 0) and (index != idx)
          sum_array << true
        end
      end
    end
    sum_array.include?(true)
  end
end



