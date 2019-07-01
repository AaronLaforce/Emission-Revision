class CreateFuelTable < ActiveRecord::Migration[5.2]
  def change
    create_table :fuel_log do |t|
      t.integer :fueltype
      t.string :gasprice
      t.string :price
      t.string :mileage
      t.integer :car_id

      t.timestamps
    end
  end
end

