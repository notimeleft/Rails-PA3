require 'json'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#subject_file = File.read('subject.json')
#subject_hash = JSON.parse(subject_file)

#subject_hash.each do
#  |hash|
#  array= hash["segments"]
#  array.each {|x| Subject.create(name: x["name"])}
#end

#instructor_file = File.read('instructor.json')
#instructor_hash = JSON.parse(instructor_file)
#instructor_hash.each do
#  |hash|
#  first= hash["first"]
#  last=hash["last"]
#  middle=hash["middle"]
#  id=hash["id"]
#  email=hash["email"]
#  Instructor.create(id_num: id, first_name: first, middle_name: middle, last_name: last, email: email)
#end

course_file = File.read('course.json')
course_hash = JSON.parse(course_file)
course_hash.each do
  |hash|
  name=hash["name"]
  code=hash["code"]
  description=hash["description"]
  Course.create(name: name, code: code, description: description)
end
