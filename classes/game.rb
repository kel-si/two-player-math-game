class Game
  attr_reader :name
  attr_writer :question

  def initialize name
    @name = name
    @p1 = Player.new 'P1'
    @p2 = Player.new 'P2'
  end

  def check_answer

  end
end

