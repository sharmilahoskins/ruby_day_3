
class Garage
  def initialize
    @cars = []
  end
  def store(car)
    @cars << car
  end
  def show_cars
    @cars
  end
  def sort_model
    @cars = @cars.sort_by {|car| car.model}
  end
  def sort_year
    @cars = @cars.sort_by {|car| car.year}
  end
  def sort_modelyear
    @cars = @cars.sort_by{|a| [a.model, a.year]}
  end
end
