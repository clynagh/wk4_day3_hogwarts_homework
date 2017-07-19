require('pry')
require_relative("../db/sql_runner")

class Student
  def initialize(params)
    @id = params['id'] if params['id']
    @first_name = params['first_name']
    @last_name = params['last_name']
    @age = params['age']
    @house = params['house']
  end

  def save
    sql = "INSERT INTO students (
    first_name, last_name, age, house)
    VALUES
    ($1, $2, $3, $4)
    RETURNING id"
    values = [@first_name, @last_name, @age, @house]
    @id = SqlRunner.run(sql, values)[0]['id']
  end


end