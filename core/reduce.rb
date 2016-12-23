# Reduce method
# an alias of inject
class ReduceTest
  INVERSE_NUMBERS = [9, 2, 5]
  NUMBERS = [1, 2, 3]
  BIG_NUMBERS = [934, 2_139, 300_519_531]
  STRINGS = ['one', 'two', 'three']

  def run
    # sum(NUMBERS)
    # sum(BIG_NUMBERS)
    # sum(STRINGS)
    # sum([])

    # concise_sum(NUMBERS)

    # difference(INVERSE_NUMBERS)
    # difference([])

    # array_to_hash(STRINGS)
  end

  def sum(enum)
    enum.reduce(1) do |accumulator, enum|
      accumulator + enum
    end
  end

  # The first element will be use as the starting point for inject
  # will return nil if it's missing
  def difference(enum)
    return 0 if enum.empty?

    # the & is optional, but may provide familiarity
    enum.inject(&:-)
  end

  def concise_sum(enum)
    enum.reduce(1, :+)
  end

  def array_to_hash(array)
    array.reduce({}) do |hash, element|
      hash.update(element => true)
    end
  end
end

reduce = ReduceTest.new
puts reduce.run
