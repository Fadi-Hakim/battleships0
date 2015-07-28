require 'grid'
describe Grid do
  let(:ship) {double(:ship, {:placed => true})}
  it "can be initialized for a certain area" do
    area = rand(10)
    grid = Grid.new(area)
    expect(grid.matrix.length).to eq(area)
  end

  it "Can convert coordinates" do
    expect(subject.coordinate_converter("J1")).to eq ([[9],[0]])
  end

  describe "#insert_ship" do
    it "takes ship and coordinate and places it in the grid" do
      subject.insert_ship(ship, "A1")
      expect(subject.matrix[0][0]).to eq ship
    end
  end
end
