class Ship
  SHIP_TYPES = {destroyer: 2,cruiser: 3, submarine: 3, battleship: 4, aircraft_carrier: 5 }

  def self.method_missing(method, *args, &block)
    return Ship.new(SHIP_TYPES[method]) if SHIP_TYPES.include?(method)
    super
  end

  attr_reader :coordinate, :size, :direction

  def initialize(size)
    @placed = false
    @coordinate
    @size = size
    @direction = :north
  end

  def change_direction direction
    @direction = direction
  end

  def placed?
    @placed
  end

  def place (coordinate)
    check_if_placed
    @placed = true
    @coordinate = coordinate
  end

  private

  def check_if_placed
    raise "ship has already been placed" if placed?
  end

end
