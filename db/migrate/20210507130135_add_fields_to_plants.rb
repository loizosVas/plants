class AddFieldsToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :taxon_name, :string
    add_column :plants, :common_name, :string
    add_column :plants, :cultivation_group, :string
    add_column :plants, :general_description, :text
    add_column :plants, :nutritional_information, :text
    add_column :plants, :min_preferred_pH, :float
    add_column :plants, :max_preffered_pH, :float
    add_column :plants, :water_requirements, :string
    add_column :plants, :energy_value, :float
    add_column :plants, :sunlight_requirements, :string
    add_column :plants, :temperature_class, :string
    add_column :plants, :nutrient_requirement, :string
    add_column :plants, :plant_requirements, :text
    add_column :plants, :soil, :string
    add_column :plants, :optimum_germination_temperature, :string
    add_column :plants, :days_to_germination_at_optimum_temperature, :string
    add_column :plants, :min_plant_growing_ideal_temperature, :float
    add_column :plants, :max_plant_growing_ideal_temperature, :float
    add_column :plants, :descriptive_growing_season, :string
    add_column :plants, :min_length_of_growing_harvest, :float
    add_column :plants, :max_length_of_growing_harvest, :float
    add_column :plants, :sensitivities, :text
    add_column :plants, :desease_management, :text
    add_column :plants, :pests_pathogens, :text
    add_column :plants, :image, :binary
  end
end
