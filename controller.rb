require('sinatra')
require('sinatra/contrib/all')
require_relative('models/student')
require_relative('models/house')

get '/hogwarts/students' do
  @all_students = Student.all
  erb(:students)
end

get '/hogwarts/new-student' do
  @all_houses = House.all
  erb(:create_student)
end

post '/hogwarts/new-student' do 
  Student.new(params).save
  redirect to '/hogwarts/students'
end