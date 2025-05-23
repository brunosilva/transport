class Travel < ApplicationRecord
  validates :start_in, presence: true
  belongs_to :vehicle
  has_many :costs, dependent: :destroy
end
