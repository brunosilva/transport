class AddTruckToVehicle < ActiveRecord::Migration[7.2]
  def change
    add_reference :vehicles, :truck, null: false, foreign_key: true
  end
end
