json.array!(@achievments) do |achievment|
  json.extract! achievment, :id, :option
  json.url achievment_url(achievment, format: :json)
end
