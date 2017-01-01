require 'test/unit'
require_relative '../lib/selection_sort'

class SelectionSortTest < Test::Unit::TestCase
  def test_basic_sorting
    unordered_array = [5, 2]
    ordered_array   = [2, 5]

    sort = SelectionSort.new
    assert_equal(ordered_array, sort.run(unordered_array))
  end

  def test_sort_only_integers
    bad_data = ["2", [1, 2]]
    sort = SelectionSort.new

    assert_raise TypeError do
      sort.run(bad_data)
    end
  end

  def test_accepts_only_enumerable
    sort = SelectionSort.new

    assert_raise TypeError do
      sort.run("data")
    end
  end
end
