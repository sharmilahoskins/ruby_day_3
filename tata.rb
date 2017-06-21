require_relative 'car'

class Tata < Car
  def initialize
    super
    @speed = 0
  end
  def speed
    @speed
  end
  def brake
    @speed = @speed - 1.25
  end
end
