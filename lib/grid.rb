class Grid

attr_accessor :matrix  # => nil

  def initialize
    @matrix = matrix
  end

def matrix
  row_1  = [:x, :x, :x, :x, :x, :x, :x, :x, :x, :x]
  row_2  = [:x, :x, :x, :x, :x, :x, :x, :x, :x, :x]
  row_3  = [:x, :x, :x, :x, :x, :x, :x, :x, :x, :x]
  row_4  = [:x, :x, :x, :x, :x, :x, :x, :x, :x, :x]
  row_5  = [:x, :x, :x, :x, :x, :x, :x, :x, :x, :x]
  row_6  = [:x, :x, :x, :x, :x, :x, :x, :x, :x, :x]
  row_7  = [:x, :x, :x, :x, :x, :x, :x, :x, :x, :x]
  row_8  = [:x, :x, :x, :x, :x, :x, :x, :x, :x, :x]
  row_9  = [:x, :x, :x, :x, :x, :x, :x, :x, :x, :x]
  row_10 = [:x, :x, :x, :x, :x, :x, :x, :x, :x, :x]

  matrix = [row_1, row_2, row_3, row_4, row_5, row_6, row_7, row_8, row_9, row_10]
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

    @x = letter_numbers[x.upcase]
    @y = (y.to_i - 1)

    conversion = [[@x],[@y]]
  end

  def insert_ship(ship, coordinate)
    coordinate_converter(coordinate)
    @matrix[@x][@y] = ship
  end
end
