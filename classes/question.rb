class Question
attr_reader :number_1, :number_2

  def initialize
  @number_1 = rand(21)
  @number_2 = rand(21)
  end

  def question
    "What does #{number_1} plus #{number_2} equal?"
  end
end