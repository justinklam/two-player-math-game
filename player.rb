class Player
  
  attr_accessor :name, :player_life, :player_score

  def initialize(name)
    @name = name
    @player_life = 3
    @player_score = 0
  end

end