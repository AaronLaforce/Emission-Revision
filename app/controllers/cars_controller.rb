class CarsController < ApplicationController
  def new
    @car = Car.new(params[:id])
  end

  def create
    @car = Car.new(car_params) 
    @car.user_id = current_user.id
    if @car.save
      flash[:success] = "Added new car!"
      redirect_to cars_path
    else 
      flash.now[:danger] = "Failed to create car"
      render :new
    end  
  end

  def index
    @cars = Car.where(user_id: current_user.id)
  end

  def destroy
    Car.destroy(params[:id])
    redirect_to cars_path
  end 

  private
    def car_params
      params.permit(:year, :make, :model, :car_name, :user_id)
    end
end
