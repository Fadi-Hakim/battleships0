require 'board'

describe Board do

  let(:ship){ double(:ship, place: true, placed?: true) }
  let(:grid){ double(:grid, insert_ship: true)}

  it "has a ships array" do
    expect(subject.ships).to eq []
  end

  it "responds to place_ship method" do
    expect(subject).to respond_to(:place_ship).with(2).arguments
  end

  describe "#place_ship" do
    it "puts the ship into the ships array" do
      subject.place_ship(ship, :coordinate)
      expect(subject.ships).to include(ship)
    end

    it "places ship into grid" do
      expect(subject.place_ship(ship, :coordinate)).to be_truthy
    end
  end

end
