require 'rspec'
require_relative 'toyota'

describe Toyota do
  it "has to be real" do
    expect{Toyota.new}.to_not raise_error
  end
  it "has wheels" do
    expect(Toyota.new.wheels).to be(4)
  end
  it "honks with a whoop" do
    expect(Toyota.new.honk).to eq("whoop")
  end
  it "speeds up by 7" do
    car= Toyota.new
    expect{car.speed_up}.to change{car.speed}.by(7)
  end
  it "slows down by 5" do
    car2 = Toyota.new
    expect{ car2.brake }.to change{ car2.speed }.by(-5)
  end
end
