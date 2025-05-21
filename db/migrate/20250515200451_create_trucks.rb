class CreateTrucks < ActiveRecord::Migration[7.2]
  def change
    create_table :trucks do |t|
      t.string :name
      t.string :model
      t.string :plate
      t.text :description

      t.timestamps
    end
  end
end
