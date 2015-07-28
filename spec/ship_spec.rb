require 'ship'

describe Ship do

  it "starts game not placed" do
    ship = described_class.destroyer
    expect(ship).not_to be_placed
  end

  it "is placed after being placed" do
    ship = described_class.destroyer
    ship.place :A1
    expect(ship).to be_placed
  end

  it "is a destroyer size 2" do
    destroyer = described_class.destroyer
    expect(destroyer.size).to eq 2
  end

  it "is a submarine size 3" do
    submarine = described_class.submarine
    expect(submarine.size).to eq 3
  end

  describe "#place" do
    it "has a coordinate after being placed" do
      ship = described_class.destroyer
      ship.place :A1
      expect(ship.coordinate).to eq :A1
    end

    it 'can only be placed one' do
      ship = described_class.destroyer
      ship.place :A1
      expect { ship.place :A1 }.to raise_error "ship has already been placed"
    end
  end
end
