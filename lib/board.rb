require_relative "ship"

class Board

attr_reader :ships

  def initialize
    @ships = []
  end

  def place_ship(ship, coordinate, grid)
    ships << ship
    ship.place coordinate
    grid.insert_ship(ship, coordinate)
  end


end
