json.extract! bike, :id, :price, :model, :brand, :milage, :created_at, :updated_at
json.url bike_url(bike, format: :json)
