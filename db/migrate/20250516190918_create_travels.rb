class CreateTravels < ActiveRecord::Migration[7.2]
  def change
    create_table :travels do |t|
      t.string :start_in
      t.string :finished_in
      t.date :end_at

      t.timestamps
    end
  end
end
