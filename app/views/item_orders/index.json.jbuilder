json.array!(@item_orders) do |item_order|
  json.extract! item_order, :id, :serial, :cart_id, :item_id, :size, :color
  json.url item_order_url(item_order, format: :json)
end
