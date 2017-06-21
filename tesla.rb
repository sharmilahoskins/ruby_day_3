require_relative 'car'

class Tesla  < Car
  def initialize(year="2015")
    super
    @honk
    @speed = 0
    @model = "Tesla"
    @year = year
  end
  def honk
    @honk = "Beep-bee-bee-boop-bee-doo-weep"
  end
  def speed
    @speed
  end
  def speed_up
    @speed = @speed + 10
  end
  def brake
    @speed = @speed - 7
  end
  def model
    @model
  end
  def year
    @year
  end
end
