require 'rspec'
require 'array_practice'

#my_uniq
describe('my_uniq') do
  it("returns an array of unique elements from input array") do
    actual = [1,3,5,1,7,8,10,14].my_uniq
    expected = [1,3,5,1,7,8,10,14].uniq
  expect(actual).to eq(expected)
  end
end

#zero_sum
describe('zero_sum') do
  it("returns true if there is a single pair that adds to zero") do
    actual = [-1, 4, 5, 6, -2, 3, 1].zero_sum
    expected = true
  expect(actual).to eq(expected)
  end
    it("handles one zero in a false case") do
    actual = [-1, 4, 5, 6, -2, 3, 10, 0].zero_sum
      expected = false
  expect(actual).to eq(expected)
  end
  it("handles one zero in a true case") do
    actual = [-1, 4, 5, 6, -2, 3, 10, 0, 2].zero_sum
    expected = true
  expect(actual).to eq(expected)
  end
    it("handles two zeros in a true case") do
    actual = [-1, 4, 5, 6, -2, 3, 10, 0, 3, 0].zero_sum
    expected = true
  expect(actual).to eq(expected)
  end
end