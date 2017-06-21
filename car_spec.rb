# Story: As a programmer, I can make a car.
# Hint: Test that creating an instance of the new class does not raise any errors.
require 'rspec'
require_relative 'car'

describe Car do
  it "has to be real" do
    expect{Car.new}.to_not raise_error
  end
  it "has to have 4 wheels" do
    expect(Car.new.wheels).to be(4)
  end
  it "has to have a horn that honks" do
    expect(Car.new.honk).to eq("beep")
  end
  it "has a year" do
    expect(Car.new.year).to eq("2017")
  end
  it "lights can turn on" do
    expect(Car.new.lights_on).to eq("on")
  end
  it "lights can turn off" do
    expect(Car.new.lights_off).to eq("off")
  end
  it "car can signal right" do
    expect(Car.new.signal_right).to eq("right")
  end
  it "car can signal left" do
    expect(Car.new.signal_left).to eq("left")
  end
  it "car has a speed" do
    expect(Car.new.speed).to be >=0
  end
  it "can call info" do
    expect(Car.new.info).to be_a(String)
  end
end
