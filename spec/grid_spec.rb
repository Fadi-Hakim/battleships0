require 'grid'

describe Grid do

  it "is initialized with a 2d array full of ':x's" do
    expect(subject.matrix[5][5]).to eq (:x)
  end

  it "Can convert coordinates" do
    expect(subject.coordinate_converter("J1")).to eq ([[9],[0]])
  end

  it "takes ship and coordinate and places it in the grid" do
    grid = Grid.new
    grid.insert_ship(:ship, "a1")
    expect(grid.matrix[0][0]).to eq (:ship)
  end
end
