json.array!(@items) do |item|
  json.extract! item, :id, :name, :description, :photo, :price, :restaurant_id, :user_id
  json.url item_url(item, format: :json)
end
