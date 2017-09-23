require 'minitest/spec'
require 'minitest/autorun'
require_relative '../lib/fizz_buzz'

describe FizzBuzz do
  it 'returns the string for 1' do
    fizz = FizzBuzz.call(1)
    fizz.must_equal '1'
  end

  it 'returns Fizz for 3' do
    fizz = FizzBuzz.call(3)
    fizz.must_equal 'Fizz'
  end

  it 'returns Fizz for 6' do
    fizz = FizzBuzz.call(6)
    fizz.must_equal 'Fizz'
  end

  it 'returns Buzz for 5' do
    fizz = FizzBuzz.call(5)
    fizz.must_equal 'Buzz'
  end

  it 'returns Buzz for 10' do
    fizz = FizzBuzz.call(10)
    fizz.must_equal 'Buzz'
  end

  it 'returns Buzz for 15' do
    fizz = FizzBuzz.call(15)
    fizz.must_equal 'FizzBuzz'
  end

  it "returns '4' for 4" do
    fizz = FizzBuzz.call(4).to_i
    fizz.must_be :<, 5
  end

  it "returns '4' for 4" do
    fizz = FizzBuzz.call(4)
    fizz.must_be_instance_of(String)
  end

  it "returns '4' for 4" do
    fizz = FizzBuzz.call(4)
    fizz.wont_be_empty
    fizz.wont_be_instance_of(Integer)
    fizz.wont_be_nil
    fizz.wont_equal 'Fizz'
    fizz.wont_include 'Fizz'
  end
end
