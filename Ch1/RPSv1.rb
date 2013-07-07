class Player
  attr_reader: :name, :wins, :losses, :choice
  
  def create name
    name = name
  end
  
  def choose_action action
    choice = action
  end
end

class Game
  attr_assessible: :players
  
  def start
    players ||= []
    
    player1 = Player.new
    puts "Player 1's name?"
    name1 = gets.chomp
    player1.create name1
    players.push player1
    
    player2 = Player.new
    puts "Player 2's name?"
    name2 = gets.chomp
    player2.create name2
    players.push player2
  end
  
  def determine_winner
    
  end
  
  def play
    players.each do |player|
      puts "Choose Player 1!"
      player.choose_action gets.chomp
    end
  end
  
  
end

class RPS
  attr_assessible: :game
  
  def start
    game = Game.new
    game.start
  end
  
  def play
    game.play
    puts "Play Again?"
    ans = gets.chomp
    if ans.first.downcase == 'y'
      
    end
  end
  
  def end
    game = nil
  end
end
