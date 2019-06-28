class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    redirect_to root_path
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
      flash[:danger] = "Failed to create account"
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

end
