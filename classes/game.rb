class Game

  def initialize name
    @name = name
    @p1 = Player.new 'P1'
    @p2 = Player.new 'P2'
  end

end