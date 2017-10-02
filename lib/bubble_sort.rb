class BubbleSort
  def self.sort(numbers)
    result = Array.new(numbers)
    swap = nil
    (result.length).times do
      for i in 0...(result.length - 1)
        if (result[i] > result[i + 1])
          swap = result[i + 1]
          result[i + 1] = result[i]
          result[i] = swap
        end
      end
    end
    result
  end
end