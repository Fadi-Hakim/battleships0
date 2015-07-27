require_relative "ship"

class Board

attr_reader :grid

  def initialize
    @grid = []
  end

  def place_ship(ship, coordinate)
    grid << ship
    confirm_placement ship
  end

  def confirm_placement ship
    ship.place
  end
end
