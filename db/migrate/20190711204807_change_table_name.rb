class ChangeTableName < ActiveRecord::Migration[5.2]
  def change
    rename_table :posts, :forum_posts
  end 
end
