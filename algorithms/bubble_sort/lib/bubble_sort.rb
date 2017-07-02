# Bubble sort is a simple sorting algorithm that repeatedly steps
# through the list to be sorted, compares each pair of adjacent
# items and swaps them if they are in the wrong order.
# The pass through the list is repeated until no swaps are needed,
# which indicates that the list is sorted.
class BubbleSort
  def initialize(array)
    @array = array
  end

  def call
    validate(@array)

    required_passes = @array.size - 1
    required_passes.times do
      @array.each_with_index do |e, i|
        if (@array[i] > @array[i + 1] rescue false)
          @array[i], @array[i + 1] = @array[i + 1], @array[i]
        end
      end
    end

    @array
  end

  private

  def validate(input)
    raise TypeError unless input.respond_to?(:each)
    raise TypeError unless input.all?{ |val| val.is_a?(Integer) }
  end
end
