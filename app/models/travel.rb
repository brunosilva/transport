class Travel < ApplicationRecord
  validates :start_in, :end_at, presence: true
  belongs_to :vehicle
  has_many :costs, dependent: :destroy
end
