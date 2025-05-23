class AddCreatedByToCosts < ActiveRecord::Migration[7.2]
  def change
    add_column :costs, :created_by, :integer
  end
end
