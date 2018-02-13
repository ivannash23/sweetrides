json.extract! store, :id, :name, :location, :phone, :email, :website, :created_at, :updated_at
json.url store_url(store, format: :json)
