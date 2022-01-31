class Question
  attr_reader :question, :answer, :num_1, :num_2

  def initialize
    @num_1 = rand(10)
    @num_2 = rand(10)
    @question = "What does #{num_1} plus #{num_2} equal?"
    @answer = num_1 + num_2
  end

end

