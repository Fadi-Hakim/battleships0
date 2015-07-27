require 'grid'

describe Grid do

  it "is initialized with a 2d array full of ':x's" do
    expect(subject.matrix[5][5]).to eq (:x)
  end
end
