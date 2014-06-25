class Team
  attr_accessor :name, :players

  def initialize(name, players = [])
    raise Exception unless players.is_a? Array

    @name = name
    @players = players

    raise Exception if has_bad_name?
  end

  def has_bad_name?
    bad_words = %w{fuck crappy cunt}
    (@name.downcase.split(" ") & bad_words).count > 0
  end

  def favored?
    @players.include? "George Clooney"
  end
end
