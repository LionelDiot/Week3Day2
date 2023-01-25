require_relative '../lib/multiple35.rb'

describe "the is_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(46)).to eq(false)
    expect(is_multiple_of_3_or_5?(98)).to eq(false)
    expect(is_multiple_of_3_or_5?(2)).to eq(false)
    expect(is_multiple_of_3_or_5?(7)).to eq(false)
  end
end

describe "the sum_of_3or5_multiples method" do
  it "should return the sum of 3 and 5 multiples from 0 until the number" do
    expect(sum_of_3or5_multiples(10)).to eq(33)
    expect(sum_of_3or5_multiples(5)).to eq(8)
    expect(sum_of_3or5_multiples(2)).to eq(0)
  end
end