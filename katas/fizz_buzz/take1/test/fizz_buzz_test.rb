require 'minitest/autorun'
require 'minitest/pride'
require_relative '../fizz_buzz.rb'

class FizzBuzzTest < MiniTest::Unit::TestCase
  def setup
    @subject = FizzBuzz.new
  end

  def test_returns_fizz_if_divisible_by_three
    assert_equal [1, 2, 'Fizz'], @subject.run(3)
  end

  def test_returns_buzz_if_divisible_by_five
    assert_equal [1, 2, 'Fizz', 4, 'Buzz'], @subject.run(5)
  end

  def test_returns_fizz_buzz_if_divisible_by_five_and_three
    expected_array = [
      1, 2, 'Fizz', 4, 'Buzz',
      'Fizz', 7, 8, 'Fizz', 'Buzz',
      11, 'Fizz', 13, 14, 'FizzBuzz']

    assert_equal expected_array , @subject.run(15)
  end
end
