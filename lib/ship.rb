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
    check_if_placed
    @placed = true
    @coordinate = coordinate
  end

  private

  def check_if_placed
    raise "ship has already been placed" if placed?
  end

end
