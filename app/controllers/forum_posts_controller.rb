class ForumPostsController < ApplicationController
  def new
    @forum_post = ForumPost.new(params[:id])
  end

  def create
    @forum_post = ForumPost.new(forum_params) 
    @forum_post.user_id = current_user.id if current_user
    if @forum_post.save
      flash[:success] = "Posted to forum!"
      redirect_to root_path
    else 
      flash.now[:danger] = "Failed to post to forum"
      render :new
    end  
  end

  def index
    @forum_posts = ForumPost.all
    @forum_replies = ForumReply.all
  end

  private
    def forum_params
      params.require(:forum_post).permit(:topic, :content, :user_id)
    end
end
