class GenCarTV3 < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.integer :year
      t.string :make
      t.string :model
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
