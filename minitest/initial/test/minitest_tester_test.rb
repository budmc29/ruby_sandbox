require 'minitest/autorun'
require 'minitest/pride'
require_relative '../minitest_tester'

# Unit tests
class MinitestTesterTest < MiniTest::Unit::TestCase
  def setup
    @klass = MinitestTester.new
  end

  def test_it_works
    assert_equal 1, 1
  end

  def test_test_skip
    skip 'will test later'
  end
end
