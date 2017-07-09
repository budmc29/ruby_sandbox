class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    return [] if @limit < 2

    hash = {}
    (2..@limit).each do |number|
      hash[number] = :unmarked
    end

    hash.each do |number, flag|
      unflagged = hash.select { |nr, fl| fl == :unmarked }
      unflagged.each do |number2, flag2|
        if number2 == number
          next
        end

        if number2 % number == 0
          hash[number2] = :marked
        end
      end
    end

    hash.select { |number, flag| flag == :unmarked }.map { |e| e[0] }
  end
end

module BookKeeping
  VERSION = 1
end
