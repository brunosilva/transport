class Cost < ApplicationRecord
  belongs_to :cost_type
  belongs_to :travel

  scope :only_deficit, -> { where(cost_type_id: [1, 2, 4]) }
  scope :only_credit, -> { where(cost_type_id: [3])}
end
