module ForumPostsHelper
  def display_forum_post_error(field)
    if @forum_post.errors[field].any?
        raw @forum_post.errors[field].first
    end
  end
end