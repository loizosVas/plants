class AddCreatedByToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :created_by, :integer
    add_index :plants, :created_by
  end
end
