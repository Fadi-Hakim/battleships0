class Ship
  SHIP_TYPES = {destroyer: 2, submarine: 3}

  def self.destroyer
    Ship.new(SHIP_TYPES[__method__])
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
