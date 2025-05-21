class Vehicle < ApplicationRecord
  belongs_to :company
  belongs_to :truck
  belongs_to :trailer

  has_many :travels
end
