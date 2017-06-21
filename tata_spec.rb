require 'rspec'
require_relative 'tata'

describe Tata do
  it "has to be real" do
    expect{Tata.new}.to_not raise_error
  end
  it "has to have a horn that honks" do
    expect(Tata.new.honk).to eq("beep")
  end
  it "slows down by 1.25" do
    car1 = Tata.new
    expect{ car1.brake }.to change{ car1.speed }.by(-1.25)
  end
end
