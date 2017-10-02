require 'pry'

class MergeSort
  def self.sort(numbers)
    return numbers if numbers.length == 1

    midpoint = numbers.length / 2
    left_numbers = numbers[0...midpoint]
    right_numbers = numbers[midpoint...numbers.length]
    left_result = sort(left_numbers)
    right_result = sort(right_numbers)

    merge(left_result, right_result)
  end

  def self.merge(left, right)
    merged_numbers = []

    while (left.length > 0 && right.length > 0) do
      left[0] < right[0] ? num = left.shift : num = right.shift
      merged_numbers.push(num)
    end
    
    while (left.length > 0) do
      merged_numbers.push(left.shift)
    end

    while (right.length > 0) do
      merged_numbers.push(right.shift)
    end
    merged_numbers
  end
end