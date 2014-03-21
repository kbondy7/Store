json.array!(@items) do |item|
  json.extract! item, :id, :title, :image
  json.url item_url(item, format: :json)
end
