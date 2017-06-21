require 'rspec'
require_relative 'garage'
require_relative 'car'
require_relative 'toyota'
require_relative 'tesla'

describe Garage do
  it "has to be able to store a car" do
    garage = Garage.new
    car1 = Car.new
    expect{garage.store(car1)}.to change{garage.show_cars}
  end
  it "show cars should show the car that was added" do
    garage2 = Garage.new
    car2 = Car.new
    garage2.store(car2)
    expect(garage2.show_cars).to include(car2)
  end
  it "should be able to sort cars by model" do
    garage3 = Garage.new
    tesla = Tesla.new
    toyota = Toyota.new
    car4 = Car.new
    garage3.store(tesla)
    garage3.store(car4)
    garage3.store(toyota)
    expect(garage3.sort_model).to match_array([tesla, toyota, car4])
    # expect{garage3.sort_model}.to change{garage3.show_cars}
  end
  it "should be able to sort cars by year" do
    garage4 = Garage.new
    tesla1 = Tesla.new
    toyota1 = Toyota.new
    car5 = Car.new
    garage4.store(tesla1)
    garage4.store(car5)
    garage4.store(toyota1)
    expect(garage4.sort_year).to match_array([toyota1, tesla1, car5])
    # expect{garage3.sort_model}.to change{garage3.show_cars}
  end
  it "should be able to sort by model then year" do
    garage5 = Garage.new
    tesla = Tesla.new("2000")
    tesla1 = Tesla.new("1999")
    car = Car.new
    toyota = Toyota.new("2015")
    toyota1 = Toyota.new("2005")
    garage5.store(tesla)
    garage5.store(tesla1)
    garage5.store(toyota)
    garage5.store(car)
    garage5.store(toyota1)
    expect(garage5.sort_modelyear).to match_array([car, tesla1, tesla, toyota1, toyota])
  end

end
