class TempRemoveTable < ActiveRecord::Migration[5.2]

    def change
      drop_table :cars
    end

  
end
