json.array!(@categories) do |category|
  json.extract! category, :id, :name, :default_order, :property_id
  json.url category_url(category, format: :json)
end
