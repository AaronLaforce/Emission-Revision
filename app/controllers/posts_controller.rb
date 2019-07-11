class PostsController < ApplicationController
  def new
    @post = Post.new(params[:id])
  end

  def create
    @post = Post.new(user_params) 
    @post.user_id = current_user.id if current_user
    if @post.save
      flash[:success] = "Posted to forum!"
      redirect_to root_path
    else 
      flash[:danger] = "Failed to post to forum"
      render :new
    end  
  end

  def index
    @posts = Post.all
  end

  private
    def user_params
      params.permit(:topic, :content, :user_id)
    end
end
