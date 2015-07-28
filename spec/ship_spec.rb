require 'ship'

describe Ship do

  it "starts game not placed" do
    expect(subject).not_to be_placed
  end

  it "is placed after being placed" do
    subject.place :A1
    expect(subject).to be_placed
  end

  describe "#place" do
    it "has a coordinate after being placed" do
      subject.place :A1
      expect(subject.coordinate).to eq :A1
    end

    it 'can only be placed one' do
      subject.place :A1
      expect { subject.place :A1 }.to raise_error "ship has already been placed"
    end
  end
end
