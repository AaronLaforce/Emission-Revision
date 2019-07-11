class FuelLog < ApplicationRecord
    belongs_to :user
    belongs_to :car
    validates :fueltype, presence: true 
    validates :gasprice, presence: true , numericality: {only_float: true}
    validates :price, presence: true, numericality: {only_float: true}
    validates :mileage, presence: true, numericality: {only_float: true}
end
