json.array!(@item_colors) do |item_color|
  json.extract! item_color, :id, :color_id, :item_id
  json.url item_color_url(item_color, format: :json)
end
