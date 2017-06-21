require 'rspec'
require_relative 'tesla'

describe Tesla do
  it "has to be real" do
    expect{Tesla.new}.to_not raise_error
  end
  it "has to have a horn that honks" do
    expect(Tesla.new.honk).to eq("Beep-bee-bee-boop-bee-doo-weep")
  end
  it "speeds up" do
    car = Tesla.new
    expect{ car.speed_up }.to change{ car.speed }.by(10)
  end
  it "slows down" do
    car = Tesla.new
    expect{ car.brake }.to change{ car.speed }.by(-7)
  end
end
