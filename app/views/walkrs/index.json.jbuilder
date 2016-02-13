json.array!(@walkrs) do |walkr|
  json.extract! walkr, :id, :name, :description, :picture, :rating
  json.url walkr_url(walkr, format: :json)
end
