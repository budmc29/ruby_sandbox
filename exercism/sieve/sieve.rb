require 'set'
require 'pry-byebug'

# Uses the Sieve of Eratosthenes to find all the primes from 2
# up to a given number
class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    return [] if @limit <= 2

    unmarked = Set.new(2..@limit)
    marked = Set.new

    unmarked.each do |_step|
      p "step #{_step}"
      p "unmarked #{unmarked.inspect}"

      unmarked.each_slice(_step) do |items|
        unless _step == 2
          binding.pry
        end

        item = items.first
        next if item < _step
        next if item == _step

        p "item #{item}"

        unmarked.delete(item)
        marked.add(item)
      end

      # binding.pry
    end

    # binding.pry
  end
end

module BookKeeping
  VERSION = 1
end
