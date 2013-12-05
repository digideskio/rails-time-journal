json.array!(@entries) do |entry|
  json.extract! entry, :id, :activity_id, :score, :hours, :date
  json.url entry_url(entry, format: :json)
  json.activity_name entry.activity.name # this is how you customise the key
end
