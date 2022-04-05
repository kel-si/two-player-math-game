class Player
  attr_reader :name, :score

  def initialize name
    @name = name
    @score = 3
  end

  def total_score
    "#{score}/3"
  end

  def take_life
    @score -= 1
  end

end

