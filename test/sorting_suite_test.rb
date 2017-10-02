require 'minitest/autorun'
require 'minitest/pride'
require '../lib/bubble_sort.rb'
require '../lib/merge_sort.rb'

class TestBubbleSort < Minitest::Test

  def setup
    @numbers = [9,4,0,1,3,12,50]
    @expected = [0,1,3,4,9,12,50]
  end

  def test_bubble_sort
    sorted = BubbleSort.sort(@numbers)

    assert_equal(@expected, sorted)
  end

  def test_merge_sort
    sorted = MergeSort.sort(@numbers)

    assert_equal(@expected, sorted)
  end
end