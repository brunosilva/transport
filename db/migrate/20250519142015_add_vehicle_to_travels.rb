class AddVehicleToTravels < ActiveRecord::Migration[7.2]
  def change
    add_reference :travels, :vehicle, null: false, foreign_key: true
  end
end
