json.array!(@pastes) do |paste|
  json.extract! paste, :id, :body, :title
  json.url paste_url(paste, format: :json)
end
