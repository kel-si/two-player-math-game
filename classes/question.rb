class Question
attr_reader :number_1, :number_2, :response

  def initialize current_player
  @number_1 = rand(21)
  @number_2 = rand(21)
  @current_player = current_player
  end

  def question 
   puts "#{@current_player.name}: What does #{number_1} plus #{number_2} equal?"
   @response = gets.chomp.to_i
  end

  def check_response
    if (@number_1 + @number_2) == @response
      puts "#{@current_player.name}: YES! You are correct."
    else
      puts "#{@current_player.name}: NO! You are incorrect."
      @current_player.take_life 
    end
  end
end
