json.array!(@tanks) do |tank|
  json.extract! tank, :id, :name, :capacity_min, :capacity_max
  json.url tank_url(tank, format: :json)
end
