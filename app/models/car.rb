class Car < ApplicationRecord
    belongs_to :user
    validates :make, presence: true 
    validates :year, presence: true 
end
