require 'benchmark'

class BenchmarkTester
  NUM = 500_000

  def run
    Benchmark.bmbm do |benchmark|
      a = [1, 2, 3, 4]

      benchmark.report("naive map") do
        NUM.times { naive_map(a) { |x| x + 1 } }
      end

      benchmark.report("naive map recurrsive") do
        NUM.times { naive_map_recurrsion(a) { |x| x + 1 } }
      end
    end
  end

  def naive_map(array, &block)
    new_array = []
    array.each { |e| new_array << block.call(e) }

    return new_array
  end

  def naive_map_recurrsion(array, &block)
    return [] if array.empty?

    [yield(array[0]) ] + naive_map_recurrsion(array[1..-1], &block)
  end
end

benchmark = BenchmarkTester.new

puts benchmark.run
