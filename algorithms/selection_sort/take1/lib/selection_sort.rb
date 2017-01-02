class SelectionSort
  def initialize(data)
    @data = data.dup
  end

  def run
    verify

    sort
  end

  private

  def verify
    raise TypeError unless @data.respond_to?(:each)

    @data.each.all? do |value|
      raise TypeError unless value.is_a?(Integer)
    end
  end

  def sort
    sort_explained
  end

  def sort_explained
    sort_max = @data.size
    puts "starting array #@data"

    sort_max.times do |i|
      smallest_position = i

      j = i + 1
      (sort_max - 1).times do |new_index|
        current_item = @data[smallest_position]
        last_read = @data[j]

        if !last_read.nil?
          puts "comparing #{last_read} with #{current_item}"
          if (last_read < current_item)
            puts "#{last_read} is smaller than #{current_item}, update smallest item position #{j}: #{@data[j]}"

            smallest_position = j
          else
            puts "#{last_read} is bigger, ignore it"
          end
        end

        j += 1
      end

      if smallest_position != i
        puts "smallest item position changed, swaping order"

        @old_data = @data.dup

        temp = @data[smallest_position]
        @data[smallest_position] = @data[i]
        @data[i] = temp
      end

      puts "old_data #@old_data"
      puts "data #@data"
    end

    @data
  end
end
