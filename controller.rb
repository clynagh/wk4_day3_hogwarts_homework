require('sinatra')
require('sinatra/contrib/all')
require_relative('models/student')

get '/hogwarts/students' do
  @all_students = Student.all
  erb(:students)
end

get '/hogwarts/new-student' do
  erb(:create_student)
end