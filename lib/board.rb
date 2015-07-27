class Board

attr_reader :grid

  def initialize
    @grid = []
  end

  def place_ship(ship, coordinate)
    grid << ship
  end

end
