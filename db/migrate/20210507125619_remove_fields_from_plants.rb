class RemoveFieldsFromPlants < ActiveRecord::Migration[6.1]
  def change
    remove_column :plants, :plant_name, :string
    remove_column :plants, :temperature, :float
    remove_column :plants, :humidity, :float
    remove_column :plants, :water, :float
    remove_column :plants, :light, :string
    remove_column :plants, :soil, :string
    remove_column :plants, :location, :string
  end
end
