class CreateTrailers < ActiveRecord::Migration[7.2]
  def change
    create_table :trailers do |t|
      t.string :name
      t.string :model
      t.string :plate
      t.text :description

      t.timestamps
    end
  end
end
