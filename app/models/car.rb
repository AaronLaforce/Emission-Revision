class Car < ApplicationRecord
    has_many :fuel_logs
    belongs_to :user
    validates :year, presence: true 
    validates :make, presence: true 
    validates :model, presence: true
    validates :trim, presence: true
end
