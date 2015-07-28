require_relative "ship"
require_relative "grid"

class Board

  attr_reader :ships

  def initialize(options = {grid: Grid.new})
    @grid = options[:grid]
    @ships = []
  end

  def place_ship(ship, coordinate)
    ships << ship
    ship.place coordinate
    @grid.insert_ship(ship, coordinate)
  end

end
