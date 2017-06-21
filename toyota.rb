require_relative 'car'

class Toyota < Car
  def initialize(year="2017")
    super
    @honk
    @info
    @speed = 0
    @model = "Toyota"
    @year = year
  end
  def honk
    @honk = "whoop"
  end
  def speed
    @speed
  end
  def speed_up
    @speed = @speed + 7
  end
  def brake
    @speed = @speed - 5
  end
  def info
    "The Car is a " + @year + " " + @model + " going at speed " + @speed.to_s + " mph."
  end
  def model
    @model
  end
  def year
    @year
  end

end
