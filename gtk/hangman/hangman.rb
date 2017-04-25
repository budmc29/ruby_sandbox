class Hangman
  attr_accessor :tries, :word

  def initialize
    @tries = 8
    @word = 'potato'
  end

  def run
    read_input
  end

  def read_input
    puts 'Enter a letter'
    input = gets.chomp

    if input.size > 1
      puts 'Only one letter'
      return
    end

    puts input.chomp
  end
end

game = Hangman.new
game.run
