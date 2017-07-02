# Convert a number to a string, the contents of which depend on the number's factors.
class Raindrops
  FACTORS = [3, 5, 7]
  SOUNDS = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(number)
    string = ''

    FACTORS.each do |factor|
      string << SOUNDS[factor] if has_factor?(number, factor)
    end

    string << number.to_s if string.empty?

    string
  end

  private

  def self.has_factor?(number, factor)
    return true if number % factor == 0
  end
end

module BookKeeping
  VERSION = 3
end
