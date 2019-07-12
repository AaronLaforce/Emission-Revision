class AddRepliesColumn < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :content
      t.integer :forum_post_id
      t.integer :user_id

      t.timestamps
    end
  end
end
