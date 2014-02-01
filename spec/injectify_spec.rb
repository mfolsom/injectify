require 'spec_helper'

describe "injectify" do

  it "sums some numbers without an argument" do
    expect([5,6,7,8,9,10].injectify { |sum, n| sum + n }).to eq(45)
  end

  it "takes a number passed to the method and prepends to the existing set" do
    expect([1,2,4,5].injectify(2) {|sum,num| sum + num}).to eq(14)
  end

  it "handles a 1 as the first prepended number" do
    expect([1,2,4,5].injectify(1) {|sum,num| sum + num}).to eq(13)
  end

  it "handles a 0 as the first prepended number" do
    expect([1,2,4,5].injectify(0) {|sum,num| sum + num}).to eq(12)
  end

  it "multiplies some numbers" do
   expect([5,6,7,8,9,10].injectify(1) { |product, n| product * n }).to eq(151200)
  end

  it "finds the longest word" do
    longest = %w{ cat sheep bear }.injectify do |memo, word|
      memo.length > word.length ? memo : word
    end
  expect(longest).to eq("sheep")
  end

end