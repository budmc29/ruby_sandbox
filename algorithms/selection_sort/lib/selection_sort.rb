class SelectionSort
  def initialize(data)
    @data = data.dup
  end

  def run
    verify

    sort
    # alternative_sort
  end

  private

  def verify
    raise TypeError unless @data.respond_to?(:each)

    @data.each.all? do |value|
      raise TypeError unless value.is_a?(Integer)
    end
  end

  def verbose_sort
    @debug = false

    puts "starting array #@data" if @debug

    sort_max = @data.size
    sort_max.times do |i|
      smallest_position = i

      j = i + 1
      (sort_max).times do
        current_item = @data[smallest_position]
        last_read = @data[j]

        if !last_read.nil?
          puts "comparing #{last_read} with #{current_item}" if @debug
          if (last_read < current_item)
            puts "#{last_read} is smaller than #{current_item}, update smallest item position #{j}: #{@data[j]}" if @debug

            smallest_position = j
          else
            puts "#{last_read} is bigger, ignore it" if @debug
          end
        end

        j += 1
      end

      unless smallest_position == i
        puts "smallest item position changed, swaping order" if @debug

        @old_data = @data.dup

        temp = @data[smallest_position]
        @data[smallest_position] = @data[i]
        @data[i] = temp
      end

      if @debug
        puts "old_data #@old_data"
        puts "data #@data"
      end
    end

    @data
  end

  def sort
    last_pos = @data.size
    last_pos.times do |starting_pos|
      smallest = starting_pos

      (starting_pos + 1).upto(last_pos - 1) do |compared_pos|
        current_item = @data[smallest]
        compared = @data[compared_pos]

        if (compared < current_item)
          smallest = compared_pos
        end
      end

      unless smallest == starting_pos
        @data[smallest], @data[starting_pos] = @data[starting_pos], @data[smallest]
      end
    end

    @data
  end

  # Selection sort: A naive sort that goes through the container and selects the smallest element,
  # putting it at the beginning. Repeat until the end is reached.
  #
  # Time Complexity: О(n^2)
  # Space Complexity: О(n) total, O(1) auxiliary
  # Stable: Yes
  def alternative_sort
    @data.size.times do |i|
      min = i

      (i+1).upto(@data.size-1) do |j|
        min = j if @data[j] < @data[min]
      end

      @data[i], @data[min] = @data[min], @data[i]
    end

    @data
  end
end
