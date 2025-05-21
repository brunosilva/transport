class Trailer < ApplicationRecord
    validates :name, :model, :plate, presence: true
end
