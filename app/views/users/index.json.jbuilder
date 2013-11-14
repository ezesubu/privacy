json.array!(@users) do |user|
  json.extract! user, :name, :lastname
  json.url user_url(user, format: :json)
end
