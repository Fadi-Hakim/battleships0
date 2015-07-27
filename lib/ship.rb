class Ship
  attr_reader :coordinate
  def initialize
    @placed = false
    @coordinate
  end

  def placed?
    @placed
  end

  def place (coordinate)
    @placed = true
    @coordinate = coordinate
  end
end
