class Car
  def initialize (year="2017")
    @wheels = 4
    @honk
    @year = year
    @lights = "off"
    @signal = "off"
    @speed = 0
    @info
    @model = "model"
  end
  def wheels
    @wheels
  end
  def honk
    @honk = "beep"
  end
  def year
    @year
  end
  def lights_on
    @lights = "on"
  end
  def lights_off
    @lights = "off"
  end
  def lights
    @lights
  end
  def signal_right
    @signal = "right"
  end
  def signal
    @signal
  end
  def signal_left
    @signal = "left"
  end
  def speed
    @speed
  end
  def info
    "The Car is a " + @year + " " + @model + " going at speed " + @speed.to_s + " mph."
  end
  def model
    @model
  end
end
