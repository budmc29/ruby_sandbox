require 'test/unit'
require_relative '../tested_class.rb'

class MinitestTester < Test::Unit::TestCase
  def test_it_works
    klass = TestedClass.new
    assert_equal(1, klass.run)
  end

  def test_failed_test
    klass = TestedClass.new
    assert_equal(34, klass.run)
  end
end
