class CreateCosts < ActiveRecord::Migration[7.2]
  def change
    create_table :costs do |t|
      t.float :value

      t.timestamps
    end
  end
end
