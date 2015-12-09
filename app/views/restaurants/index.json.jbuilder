json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :street_line_1, :street_line_2, :city, :state, :zipcode, :latitude, :longitude
  json.url restaurant_url(restaurant, format: :json)
end
