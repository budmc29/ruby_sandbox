require 'minitest/autorun'
require_relative '../lib/bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_sorts_one_number
    sort = BubbleSort.new([4])
    assert_equal [4], sort.call
  end

  def test_sorts_two_numbers
    sort = BubbleSort.new([5, 4])
    assert_equal [4, 5], sort.call
  end

  def test_sort_three_numbers
    unordered_array = [4, -1, 8]
    ordered_array   = [-1, 4, 8]

    sort = BubbleSort.new(unordered_array)
    assert_equal ordered_array, sort.call
  end

  def test_sorts_multiple_numbers
    unordered_array = [-1, -99, 403, 22, 1, 64, 9, 6, 3]
    ordered_array   = [-99, -1, 1, 3, 6, 9, 22, 64, 403]

    sort = BubbleSort.new(unordered_array)
    assert_equal(ordered_array, sort.call)
  end

  def test_sorts_already_sorted
    ordered_array   = [-1, 2, 3, 4, 8]

    sort = BubbleSort.new(ordered_array)
    assert_equal(ordered_array, sort.call)
  end

  def test_sort_only_integers
    bad_data = ["2", [1, 2]]
    sort = BubbleSort.new(bad_data)

    assert_raises TypeError do
      sort.call
    end
  end

  def test_accepts_only_enumerable
    sort = BubbleSort.new("data")

    assert_raises TypeError do
      sort.call
    end
  end
end
