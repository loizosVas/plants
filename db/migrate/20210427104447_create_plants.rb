class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :plant_name
      t.float :temperature
      t.float :humidity
      t.float :water
      t.string :light
      t.string :soil
      t.string :location

      t.timestamps
    end
  end
end
