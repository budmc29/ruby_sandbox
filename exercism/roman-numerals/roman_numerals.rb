class Fixnum
  def to_roman
    string = ''
    number = self

    puts number
    while number < 4 && number > 1
      string << 'I'
      number -= 1
    end

    while number == 1
      string << 'I'
    end

    case number
    when 4
      string << 'IV'
    when 5
      string << 'V'
    end

    string
  end
end
