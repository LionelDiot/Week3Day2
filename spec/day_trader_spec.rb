require_relative '../lib/day_trader.rb'

describe "the benefice array method" do
  it "should return the best duo buy/sell for each day" do
    expect(max_diff_array([10,2,5,6,8,5,9])).to eq([[0,0],[7,6],[4,6],[3,6],[1,6],[4,6],[0,0]])
  end
end
describe "day_trader method" do
  it "should return out of an array of prices which is the best pairing buy/sell" do
    expect(day_trader([4,5,1,6,8,1,9])).to eq([2,6])

  end
end
