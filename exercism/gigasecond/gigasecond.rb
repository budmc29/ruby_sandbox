require 'date'

# Calculate the moment when someone has lived for 10^9 seconds.
class Gigasecond
  GIGASECOND = 1_000_000_000

  # Requires a moment as a valid date
  def self.from(moment)
    Time.at(parse(moment) + GIGASECOND)
  end

  private

  def self.parse(moment)
    if moment.respond_to?(:to_time)
      moment.to_time
    elsif moment.is_a?(String)
      DateTime.parse(moment).to_time
    else
      moment
    end
  end
end

module BookKeeping
  VERSION = 6
end
