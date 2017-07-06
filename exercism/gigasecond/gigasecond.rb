# Calculate the moment when someone has lived for 10^9 seconds.
class Gigasecond
  GIGASECOND = 1_000_000_000

  def self.from(moment)
    raise ArgumentError unless moment.is_a?(Time)

    Time.at(moment + GIGASECOND)
  end
end

module BookKeeping
  VERSION = 6
end
