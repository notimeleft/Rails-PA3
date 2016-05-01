require 'json'
subject_file = File.read('subject.json')
subject_hash = JSON.parse(subject_file)

subjects = {}
subject_hash.each do
  |hash|
  value= hash["id"].slice(5,9).to_i
  name = hash["name"]
  subjects[value]=name
end
#print subjects

course_file = File.read('course.json')
course_hash = JSON.parse(course_file)

course_hash.each do
  |hash|
  v = hash["subjects"]
  #puts hash["description"]
  #puts hash["name"]
  #puts v[0]["id"]
end
instructor_file = File.read('instructor.json')
instructor_hash = JSON.parse(instructor_file)
instructor_hash.each do
  |hash|
  first= hash["first"]
  last=hash["last"]
  middle=hash["middle"]
  id=hash["id"]
  email=hash["email"]
  print first, middle, last, id, email, "\n"
  #Instructor.create(id_num: id, first_name: first, middle_name: middle, last_name: last, email: email)
end
