json.array!(@dogs) do |dog|
  json.extract! dog, :id, :name, :description, :picture, :rating
  json.url dog_url(dog, format: :json)
end
