class FuelLog < ApplicationRecord
    belongs_to :user
    belongs_to :car
    validates :fueltype, presence: true 
    validates :gasprice, presence: true 
    validates :price, presence: true
    validates :mileage, presence: true
end
