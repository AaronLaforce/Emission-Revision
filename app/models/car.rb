class Car < ApplicationRecord
    belongs_to :user
    has_many :fuel_logs
    validates :year, presence: true 
    validates :make, presence: true 
    validates :model, presence: true
    validates :trim, presence: true
end
