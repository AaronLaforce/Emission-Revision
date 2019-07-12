module ForumRepliesHelper
  def display_forum_reply_error(field)
    if @forum_reply.errors[field].any?
        raw @forum_reply.errors[field].first
    end
  end
end