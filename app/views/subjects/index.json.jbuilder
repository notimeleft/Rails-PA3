json.array!(@subjects) do |subject|
  json.extract! subject, :id, :name, :term, :abbreviation
  json.url subject_url(subject, format: :json)
end
