class ForumRepliesController < ForumPostsController
  def new
    @forum_reply = ForumReply.new(params[:id])
  end

  def create
    @forum_posts = ForumPost.all
    @forum_reply = ForumReply.new(reply_params) 
    @forum_reply.user_id = current_user.id if current_user
    if @forum_reply.save
      flash[:success] = "Replied to topic!"
      redirect_to root_path
    else 
      flash.now[:danger] = "Failed to post reply"
      render :new
    end  
  end

  def index
    @forum_replies = ForumReply.all
  end

  private
    def reply_params
      params.require(:forum_reply).permit(:content, :forum_post_id ,:user_id)
    end
end