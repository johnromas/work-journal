json.array!(@entries) do |entry|
  json.extract! entry, :id, :description, :date, :private, :learning, :achievment_id
  json.url entry_url(entry, format: :json)
end
