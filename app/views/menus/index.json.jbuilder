json.array!(@menus) do |menu|
  json.extract! menu, :id, :name, :start_date, :end_date, :user_id, :restaurant_id, :slug
  json.url menu_url(menu, format: :json)
end
