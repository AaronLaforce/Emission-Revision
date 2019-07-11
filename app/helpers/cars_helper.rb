module CarsHelper
  def display_car_error(field)
    if @car.errors[field].any?
        raw @car.errors[field].first
    end
  end
end
