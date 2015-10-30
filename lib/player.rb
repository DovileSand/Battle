class Player

attr_reader :player_name, :points

DEFAULT_HIT_POINTS = 100

  def initialize(player_name, points = DEFAULT_HIT_POINTS)
    @player_name = player_name
    @points = points
  end

  def attack(player_name)
    player_name.receive_damage
  end

  def receive_damage
    @points -= 1
  end

end
