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

  it "is a cruiser size 3" do
    cruiser = described_class.cruiser
    expect(cruiser.size).to eq 3
  end

  it "is a submarine size 3" do
    submarine = described_class.submarine
    expect(submarine.size).to eq 3
  end

  it "is a battleship size 4" do
    battleship = described_class.battleship
    expect(battleship.size).to eq 4
  end

  it "is aircraft_carrier size 5" do
    aircraft_carrier = described_class.aircraft_carrier
    expect(aircraft_carrier.size).to eq 5
  end

  it "raises error if valid ship not given" do
    expect{ described_class.not_valid }.to raise_error "not a valid ship type"
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
