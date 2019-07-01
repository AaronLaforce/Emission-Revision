class DelCaridBug < ActiveRecord::Migration[5.2]
  def change
    drop_table :fuel_logs
  end
end
