require_relative "ship"

class Board

attr_reader :grid

  def initialize
    @grid = []
  end

  def place_ship(ship, coordinate)
    grid << ship
    ship.place coordinate
  end

  def coordinate_converter(coordinate)
    letter_numbers = {
      "A" => 0,
      "B" => 1,
      "C" => 2,
      "D" => 3,
      "E" => 4,
      "F" => 5,
      "G" => 6,
      "H" => 7,
      "I" => 8,
      "J" => 9
    }
    coord_arr = coordinate.to_s.split('')
    x = coord_arr[0]
    y = coord_arr[1]

    x = letter_numbers[x.upcase]
    y = (y.to_i - 1)

    conversion = [[x],[y]]
    return conversion
  end
end
