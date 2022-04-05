class Question
attr_reader :number_1, :number_2, :response

  def initialize
  @number_1 = rand(21)
  @number_2 = rand(21)
  end

  def question
   puts "What does #{number_1} plus #{number_2} equal?"
   $response = gets.chomp.to_i
   puts "The response is: #{$response}"
  end

  def check_response
    if (@number_1 + @number_2) == $response
      puts "YES! You are correct."
    else
      puts "NO! You are incorrect."
    end
  end
end

question1 = Question.new
puts question1.question
puts question1.check_response