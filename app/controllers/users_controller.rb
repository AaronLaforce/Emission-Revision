class UsersController < ApplicationController
  include UsersHelper
  def show
    @user = User.find(params[:id])
    redirect_to root_path
  end

  def index
    
  end

  def new
    @user = User.new(params[:id])
  end

  def create
    @user = User.new(user_params) 
    if @user.save
      log_in @user
      flash[:success] = "Successfully Created Account!"
      redirect_to @user
    else
      flash.now[:danger] = "Failed to create account"
      render :new
    end
  end

  def edit
    @user=User.find(params[:id])
  end

  def update
    @user=User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Successfully Updated Account Details!"
      redirect_to user_details_path
    else
      render :edit
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

end
