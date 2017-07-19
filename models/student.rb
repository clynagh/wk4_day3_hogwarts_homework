require('pry')

class Student
  def initialize(params)
    @first_name = params['first_name']
    @last_name = params['last_name']
    @age = params['age']
    @house = params['house']
  end


end