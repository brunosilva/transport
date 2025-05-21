class AddTrailerToVehicles < ActiveRecord::Migration[7.2]
  def change
    add_reference :vehicles, :trailer, null: true, foreign_key: true
  end
end
