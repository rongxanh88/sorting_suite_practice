class BubbleSort
  def self.sort(numbers)
    result = Array.new(numbers)
    swap = nil
    (result.length).times do
      swaps_made = false
      for i in 0...result.length
        if (result[i] > result[i + 1])
          swap = result[i + 1]
          result[i + 1] = result[i]
          result[i] = swap
          swaps_made = true
        end
      end
      break
    end
    result
  end
end