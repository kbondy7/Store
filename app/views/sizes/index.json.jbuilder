json.array!(@sizes) do |size|
  json.extract! size, :id, :title
  json.url size_url(size, format: :json)
end
