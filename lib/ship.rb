class Ship

  def initialize
    @placed = false
  end

  def placed?
    @placed
  end

  def place
    @placed = true
  end
end
