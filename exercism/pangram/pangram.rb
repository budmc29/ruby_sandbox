# Determine if a sentence is a pangram (a sentence using every letter of the alphabet at least once)
class Pangram
  ALPHABET = 'a'..'z'

  def self.pangram?(sentence)
    sentence = sentence.downcase

    ALPHABET.all?{ |letter| sentence.include?(letter) }
  end
end

module BookKeeping
  VERSION = 4
end
