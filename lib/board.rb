require_relative "ship"

class Board

attr_reader :ships

  def initialize
    @ships = []
  end

  def place_ship(ship, coordinate)
    ships << ship
    ship.place coordinate
  end

  
end
