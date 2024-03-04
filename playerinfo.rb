
#class to hold the details of each player
class PlayerInfo
  attr_reader :name
attr_accessor :lives, :score

  #initialize the player details
  def initialize(name)
    
    @name = name
    @lives = 3
    @score = 0

  end

  
end

#test generated
#player = PlayerInfo.new("Player1")
#puts "Player name: #{player.name}"  # Output the player's name
#puts "Initial lives: #{player.lives}"  # Output the initial number of lives
#puts "Initial score: #{player.score}"  # Output the initial score

# Modify player attributes
#player.lives -= 1
#player.score += 10

#puts "Updated lives: #{player.lives}"  # Output the updated number of lives
#puts "Updated score: #{player.score}" 