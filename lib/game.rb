require_relative 'player'

class Game

  attr_reader :name1, :name2, :current_turn
  def initialize(name1, name2)
      @name1 = name1
      @name2 = name2
      @current_turn = name1
  end

  def turn_switcher
    current_turn = name2
  end

  def attack(player)
    player.damage_taken
  end
end
