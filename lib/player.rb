class Player 

  attr_reader :name

  def initialize(name)
    @name = name
    @hit_points = 100
  end

  def hit_points
    @hit_points
  end

  def attack
    @hit_points -= 15
  end

end