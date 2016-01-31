json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :product_id, :measurement_id, :amount, :dish_id
  json.url ingredient_url(ingredient, format: :json)
end
