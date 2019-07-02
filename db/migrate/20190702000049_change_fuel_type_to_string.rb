class ChangeFuelTypeToString < ActiveRecord::Migration[5.2]
  def change
    change_column :fuel_logs, :fueltype, :string
  end
end
