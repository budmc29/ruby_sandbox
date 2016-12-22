class RomanNumeralConverter
  CASES = [
    [400, 'CD'],
    [100, 'C'],
    [90, 'XC'],
    [50, 'L'],
    [40, 'XL'],
    [10, 'X'],
    [9, 'IX'],
    [5, 'V'],
    [4, 'IV'],
    [1, 'I'],
  ]

  def convert(number)
    result = ''

    CASES.each do |value, glyph|
      while number >= value
        result << glyph
        number -= value
      end
    end

    result
  end
end
