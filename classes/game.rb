class Game
  attr_reader :name
  attr_writer :question

  def initialize name
    @name = name
    @p1 = Player.new 'Player 1'
    @p2 = Player.new 'Player 2'
    @current_player = @p1
  end

  def play
    while @p1.score != 0 && @p2.score != 0 
      # create question
      q = Question.new @current_player

      # prompt user
      puts "---- NEW TURN ----"
      q.question
      q.check_response

      # update score
      puts "SCORE: P1: #{@p1.score} vs P2: #{@p2.score}"

      # set current player
      if @current_player == @p1
        @current_player = @p2
      else 
        @current_player = @p1
      end 
    end

    # decide winner
    if @p1.score >= 1
      puts "#{@p1.name} wins with a score of #{@p1.score}"
    else 
      puts "#{@p2.name} wins with a score of #{@p2.score}" 
    end
    puts "---- GAME OVER ----"
    puts "GOOD BYE!"
  end
end