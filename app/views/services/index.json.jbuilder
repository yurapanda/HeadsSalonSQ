json.array!(@services) do |service|
  json.extract! service, :id, :name, :price, :category
  json.url service_url(service, format: :json)
end
