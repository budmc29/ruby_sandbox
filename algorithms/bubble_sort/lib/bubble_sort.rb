# Bubble sort is a simple sorting algorithm that repeatedly steps
# through the list to be sorted, compares each pair of adjacent
# items and swaps them if they are in the wrong order.
# The pass through the list is repeated until no swaps are needed,
# which indicates that the list is sorted.
class BubbleSort
  def initialize(array)
    @list = array.dup
  end

  def call
    validate(@list)
    sort
  end

  private

  def sort
    pases = @list.size - 1
    pases.times do
      @list.each_with_index do |e, i|
        _current = i
        _next = _current + 1

        next if @list[_next].nil?

        if @list[_current] > @list[_next]
          swap_values(_current, _next)
        end
      end
    end

    @list
  end

  def validate(input)
    raise TypeError unless input.respond_to?(:each)
    raise TypeError unless input.all?{ |val| val.is_a?(Integer) }
  end

  def swap_values(_current, _next)
    @list[_current], @list[_next] = @list[_next], @list[_current]
  end
end
