require 'minitest/autorun'
require 'minitest/pride'
require_relative '../minitest_tester'

# Specs
describe MinitestTester do
  before do
    @klass = MinitestTester.new
  end

  it 'has specs' do
    @klass.run.must_equal 'works'
  end
end
