class AddTravelToCost < ActiveRecord::Migration[7.2]
  def change
    add_reference :costs, :travel, null: true, foreign_key: true
  end
end
