require_relative "ship"
require_relative "grid"

class Board

  attr_reader :ships

  def initialize(options)
    @grid_area  = options[:grid_area]
    @grid = options[:grid] || Grid
    @ships = []
  end

  def place_ship(ship, coordinate, grid)
    ships << ship
    ship.place coordinate
    grid.insert_ship(ship, coordinate)
  end

  def create_grid
    @grid.new(@grid_area)
  end
end
