json.array!(@measurements) do |measurement|
  json.extract! measurement, :id, :name, :product_id, :ratio
  json.url measurement_url(measurement, format: :json)
end
