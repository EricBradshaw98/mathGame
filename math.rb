#Read the description above again and extract / write down the nouns that you feel could make for important entities (manifested in the form of classes) to contain (encapsulate) logic as part of this app.

#P1 P2 score, answers, lives

#What information is relevant to each class?
#What will they need in order to be initialized?
#What public methods will be defined on them?

#require the two classes
require_relative 'playerinfo'
require_relative 'questionclass'

#tested running question in here, works.
#initialize game class
class Game
  def initialize
    @player1 = PlayerInfo.new('Player 1')
    @player2 = PlayerInfo.new('Player 2')
    @current_player = @player1
  end

  def start_game

    puts "Let's play the Math Game"
    puts "Game started"

loop do

create_question


#current player answers
puts "\n#{@current_player.name}, please answer this question"
puts @question.question

  # get answer
  print 'Your answer: '
  answer = gets.chomp.to_i

  if answer == @question.answer
    puts "Correct answer "
    @current_player.score += 1
    display_score
    switch_player
    if game_over?
      announce_winner
      break
    end
  else
    puts "Incorrect, it's actually : #{@question.answer}"
    @current_player.score -= 1
    @current_player.lives -= 1

    #display the score

    display_score

    #switch player
    switch_player
    #check if game is over
    if game_over?
      announce_winner
      break
    end
  end
  end
  puts "\nGame Over!"
    puts "Thank you for playing!"
  end

  private

  def create_question
    @question = QuestionClass.new
  end

  def display_score
    puts "\nScores:"
    puts "#{@player1.name}: #{@player1.score}/3"
    puts "#{@player2.name}: #{@player2.score}/3"
  end

  def switch_player
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end

  def game_over?
    @player1.lives.zero? || @player2.lives.zero? || @player2.score >= 3
  end

  def announce_winner

   

    if @player1.lives.zero? || @player2.score >= 3 
      winner = @player2
      loser = @player1
    if @player2.lives.zero? || @player1.score >= 3
      winner = @player1
      loser = @player2
      

    end
  end

    puts "\n Game Over! "
    puts "#{winner.name} wins with a score of #{winner.score}!"
    puts "#{loser.name} scored #{loser.score}."
  end
end