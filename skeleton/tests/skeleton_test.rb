require 'minitest/autorun'
require './lib/skeleton.rb'

class SkeletonTest < MiniTest::Unit::TestCase
  def setup
    @sk = Skeleton.new
  end

  def test_it_runs
    assert_equal 'it runs', @sk.run
  end
end
