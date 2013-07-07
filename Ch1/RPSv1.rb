class Player
  attr_reader: :name, :wins, :losses, :choice
  
  def create name
    name = name
    wins = 0
    losses = 0
    choice = ''
  end
  
  def choose_action action
    choice = action
  end
  
  def won? win
    if (win)
      wins = wins + 1
    else
      losses = losses + 1
    end
  end
end

class Game
  attr_assessible: :players
  
  win_conditions = [:pr, :rs, :ps]
  
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
    p1_short = players.first.choice.first.downcase
    p2_short = players.last.choice.first.downcase
    challenge = p1_short + p2_short
    unless (win_conditions.include? challenge.to_sym)
      players.last.won? true
      players.first.won? false
      return players.last
    end
    players.first.won? true
    players.last.won? false
    return players.first
  end
  
  def play
    players.each do |player|
      puts "Choose Player 1!"
      player.choose_action gets.chomp
    end
    determine_winner
  end
  
  
end

class RPS
  attr_assessible: :game
  
  def start
    game = Game.new
    game.start
  end
  
  def play
    winner = game.play
    puts "Player #{winner.name} Wins"
    puts "Play Again?"
    ans = gets.chomp
    if (ans.first.downcase != 'y')
      return quit_game
    end
    play
  end
  
  def quit_game
    game = nil
  end
end
