json.array!(@item_sizes) do |item_size|
  json.extract! item_size, :id, :size_id, :item_id
  json.url item_size_url(item_size, format: :json)
end
