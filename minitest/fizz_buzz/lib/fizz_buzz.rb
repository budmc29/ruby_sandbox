class FizzBuzz
  def self.call(input)
    if input % 15 == 0
      'FizzBuzz'
    elsif input % 3 == 0
      'Fizz'
    elsif input % 5 == 0
      'Buzz'
    else
      input.to_s
    end
  end
end
