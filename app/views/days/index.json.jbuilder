json.array!(@days) do |day|
  json.extract! day, :id, :date, :score, :notes
  json.url day_url(day, format: :json)
end
