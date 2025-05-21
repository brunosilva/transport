class AddCostTypesToCost < ActiveRecord::Migration[7.2]
  def change
    add_reference :costs, :cost_type, null: false, foreign_key: true
  end
end
