json.array!(@reclamos) do |reclamo|
  json.extract! reclamo, :asunto, :email
  json.url reclamo_url(reclamo, format: :json)
end
