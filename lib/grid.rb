class Grid

attr_reader :matrix

  def initialize(area = 10)
    @matrix = matrix_builder(area)
  end

def matrix_builder(area)
  matrix = Array.new(area){Array.new(area)}
end

  def coordinate_converter(coordinate)
    alpha_table = {}
    (('A'..'Z').zip(0..25)).each { |x| alpha_table[x[0]] = x[1] }
    coord_arr = coordinate.to_s.split('')
    x = coord_arr[0]
    y = coord_arr[1]

    @x = alpha_table[x.upcase]
    @y = (y.to_i - 1)

    conversion = [[@x],[@y]]
  end

  def insert_ship(ship, coordinate)
    coordinate_converter(coordinate)
    @matrix[@x][@y] = ship

  end
end
