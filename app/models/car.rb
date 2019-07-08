class Car < ApplicationRecord
    belongs_to :user
    has_many :fuel_logs
    validates :year, presence: true 
    validates :make, presence: true 
    validates :model, presence: true
    validates :car_name, presence: true

    def make=(s)
        write_attribute(:make, s.to_s.capitalize)
    end
end
