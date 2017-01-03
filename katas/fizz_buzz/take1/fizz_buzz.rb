class FizzBuzz
  def run(times)
    result = []
    1.upto(times) do |number|
      if (number.modulo(5) == 0 && number.modulo(3) == 0)
        result << 'FizzBuzz'
      elsif (number.modulo(5) == 0)
        result << 'Buzz'
      elsif (number.modulo(3) == 0)
        result << 'Fizz'
      else
        result << number
      end
    end

    result
  end
end
