class CarsController < ApplicationController
  def new
    @car = Car.new(params[:id])
  end

  def create
    @car = Car.new(user_params) 
    @car.user_id = current_user.id
    if @car.save
      flash[:success] = "Added new car!"
      redirect_to root_path
    else 
      flash[:danger] = "Failed to create car"
    end  
  end

  def index
    @cars = Car.where(user_id: current_user.id)
  end

  private
    def user_params
      params.require(:car).permit(:year,:make, :model, :user_id)
    end
end
