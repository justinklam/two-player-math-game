class Questions

  def initialize
    operands = ["+", "-", "*"]

    @num1 = rand(1..20)
    @num2 = rand(1..10)

    choose_operands = operands[rand(0..2)]

    if choose_operands == "+"
      @correct_answer = @num1 + @num2
    elsif choose_operands == "-"
      @correct_answer = @num1 - @num2
    elsif choose_operands == "*"
      @correct_answer = @num1 * @num2
    # elsif choose_operands == "/"
    #   @answer_given = @num1 / @num2 
    end
    @question = " What does #{@num1} #{choose_operands} #{@num2} equal?" 
  end

  def display_question
    puts "#{@question}"
  end


  def answer_checked(input)
    @correct_answer == input
  end

end