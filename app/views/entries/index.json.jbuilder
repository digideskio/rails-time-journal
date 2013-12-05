json.array!(@entries) do |entry|
  json.extract! entry, :id, :activity_name, :activity_id, :score, :hours, :date
  json.url entry_url(entry, format: :json)
end
