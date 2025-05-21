class Truck < ApplicationRecord
    validates :name, :model, :plate, presence: true

    
end
