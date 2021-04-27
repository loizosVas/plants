json.extract! plant, :id, :plant_name, :temperature, :humidity, :water, :light, :soil, :location, :created_at, :updated_at
json.url plant_url(plant, format: :json)
