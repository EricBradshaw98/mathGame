#Read the description above again and extract / write down the nouns that you feel could make for important entities (manifested in the form of classes) to contain (encapsulate) logic as part of this app.

#P1 P2 score, answers, lives

#What information is relevant to each class?
#What will they need in order to be initialized?
#What public methods will be defined on them?

#require the two classes
require_relative 'playerclass'
require_relative 'questionclass'

#tested running question in here, works.
#initialize game class
class Game
  def initialize
    @player1 = PlayerInfo.new('Player 1')
    @player2 = PlayerInfo.new('Player 2')
    @current_player = @player1
  end

  