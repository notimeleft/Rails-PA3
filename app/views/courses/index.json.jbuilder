json.array!(@courses) do |course|
  json.extract! course, :id, :name, :code, :description
  json.url course_url(course, format: :json)
end
