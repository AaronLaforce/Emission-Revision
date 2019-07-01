class AddCaridToFuelLogs < ActiveRecord::Migration[5.2]
  def change
    add_column :fuel_logs, :car_id, :integer
  end
end
