class Ship
  SHIP_TYPES = {destroyer: 2,cruiser: 3, submarine: 3, battleship: 4, aircraft_carrier: 5 }

  def self.method_missing(method)
    raise "not a valid ship type" unless SHIP_TYPES.include?(method)
    Ship.new(SHIP_TYPES[method])
  end

  attr_reader :coordinate, :size

  def initialize(size)
    @placed = false
    @coordinate
    @size = size
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
