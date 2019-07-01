class DelFuelMistake < ActiveRecord::Migration[5.2]
  def change
    drop_table :fuel_log
  end
end
