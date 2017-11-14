class Team
  attr_reader :name, :players

  def initialize(name, players = [])
    raise Exception unless players.is_a? Array

    @name = name
    @players = players

    raise Exception if has_bad_name?
  end

  def favored?
    # TODO: Remove hardcoding
    @players.include? 'Celebrity Joe'
  end

  def enter_competition(competition)
    raise Competition::Closed if competition.questions.empty?
  end

  private

  def list_of_banned_words
    %w{bad}
  end

  def has_bad_name?
    list_of_banned_words - @name.downcase.split(' ') != list_of_banned_words
  end
end
