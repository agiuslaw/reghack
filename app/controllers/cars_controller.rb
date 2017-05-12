class CarsController < ApplicationController
  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to cars_path
    else
      redirect_to new_car_path
    end
  end

  def index
    @cars = Car.all
  end

  private
    def car_params
        params.require(:car).permit(:make, :model, :year, :price)
    end
end
