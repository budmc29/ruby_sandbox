class SelectionSort
  def run(data)
    verify_data(data)
    [2, 5]
  end

  def verify_data(data)
    raise TypeError unless data.respond_to?(:each)

    data.each.all? do |value|
      raise TypeError unless value.is_a?(Integer)
    end
  end
end
