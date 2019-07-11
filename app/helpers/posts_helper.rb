module PostsHelper
  def display_post_error(field)
    if @post.errors[field].any?
        raw @post.errors[field].first
    end
  end
end