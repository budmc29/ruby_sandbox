require 'minitest/autorun'
require_relative 'gigasecond'

# Common test data version: 1.0.0 61e7d70
class GigasecondTest < Minitest::Test
  def test_date_only_specification_of_time
    assert_equal Time.utc(2043, 1, 1, 1, 46, 40), Gigasecond.from(Time.utc(2011, 4, 25, 0, 0, 0))
  end

  def test_second_test_for_date_only_specification_of_time
    assert_equal Time.utc(2009, 2, 19, 1, 46, 40), Gigasecond.from(Time.utc(1977, 6, 13, 0, 0, 0))
  end

  def test_third_test_for_date_only_specification_of_time
    assert_equal Time.utc(1991, 3, 27, 1, 46, 40), Gigasecond.from(Time.utc(1959, 7, 19, 0, 0, 0))
  end

  def test_full_time_specified
    assert_equal Time.utc(2046, 10, 2, 23, 46, 40), Gigasecond.from(Time.utc(2015, 1, 24, 22, 0, 0))
  end

  def test_full_time_with_day_roll_over
    assert_equal Time.utc(2046, 10, 3, 1, 46, 39), Gigasecond.from(Time.utc(2015, 1, 24, 23, 59, 59))
  end

  # ADDED
  def test_returns_the_result_in_the_same_timezon_given
    assert_equal Time.new(2049, 3, 10, 22, 31, 07), Gigasecond.from(Time.new(2017, 7, 2, 21, 44, 27))
  end

  # ADDED
  def test_requires_valid_input
    assert_raises ArgumentError do
      Gigasecond.from('eot')
    end
  end

  def test_bookkeeping
    assert_equal 6, BookKeeping::VERSION
  end
end
