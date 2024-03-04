#class definition, create the question in here

class Question
  attr_reader :answer, :question


  #create random number between 1 and 20
  def initialize
    num1 = rand(1..20)
    num2 = rand(1..20)

    @question = "What is #{num1} + #{num2}?"
    @answer = num1 + num2
  end
end

question = Question.new
puts question.question  # Output the generated question
user_answer = gets.chomp.to_i  # Get user's answer
if user_answer == question.answer
  puts "Correct!"
else
  puts "Incorrect. The correct answer is #{question.answer}."
end