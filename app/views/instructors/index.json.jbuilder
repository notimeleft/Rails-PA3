json.array!(@instructors) do |instructor|
  json.extract! instructor, :id, :id_num, :first_name, :middle_name, :last_name, :email
  json.url instructor_url(instructor, format: :json)
end
