json.array!(@tank_product_compatibilities) do |tank_product_compatibility|
  json.extract! tank_product_compatibility, :id, :tank_id, :product_id
  json.url tank_product_compatibility_url(tank_product_compatibility, format: :json)
end
