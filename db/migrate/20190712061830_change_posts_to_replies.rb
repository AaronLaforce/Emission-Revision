class ChangePostsToReplies < ActiveRecord::Migration[5.2]
  def change
    rename_table :posts, :forum_replies
  end
end
