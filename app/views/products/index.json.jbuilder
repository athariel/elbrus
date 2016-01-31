json.array!(@products) do |product|
  json.extract! product, :id, :name, :standard_measure, :calories, :carbohydrate, :protein, :fat, :roughage
  json.url product_url(product, format: :json)
end
