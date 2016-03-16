require 'json'
subject_file = File.read('course.json')
subject_hash = JSON.parse(subject_file)


subject_hash.each do
  |hash|
  puts hash 

end
