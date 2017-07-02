# Finds the difference between the square of the sum and the sum of the squares of the first N natural numbers.
class Squares
  def initialize(limit)
    @limit = limit
  end

  # Calculates he square of the sum of the first n natural numbers
  # (1 + 2 + ... + x)²
  def square_of_sum
    (1..@limit).inject(0, :+) ** 2
  end

  # Calculates the sum of the squares of the first n natural numbers
  # 1² + 2² + ... + x²
  def sum_of_squares
    (1..@limit).inject(0){ |s, e| s + e ** 2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end
