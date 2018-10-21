class Game
  attr_reader :player_1, :player_2

  WINS = { :Scissors => :Paper, :Rock => :Scissors, :Paper => :Rock }

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2 = Computer.new)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def result
    if @player_1.move == WINS.key(@player_2.move)
      "Win"
    elsif @player_1.move == @player_2.move
      "Draw"
    else
      "Lose"
    end
  end

  def message
    result
    case result
    when "Win"
      "#{@player_1.name} wins!"
    when "Lose"
      "#{@player_1.name} loses!"
    when "Draw"
      "Draw!"
    end
  end
end
