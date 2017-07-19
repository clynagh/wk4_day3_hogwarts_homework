require('pry')
require_relative("../db/sql_runner")

class Student
  attr_reader :first_name, :last_name, :age, :house
  def initialize(params)
    @id = params['id'].to_i if params['id']
    @first_name = params['first_name']
    @last_name = params['last_name']
    @age = params['age']
    @house = params['house']
    @values = [@first_name, @last_name, @age, @house]
  end

  def save
    sql = "INSERT INTO students (
    first_name, last_name, age, house)
    VALUES
    ($1, $2, $3, $4)
    RETURNING id;"
    @id = SqlRunner.run(sql, @values)[0]['id'].to_i
  end

  def find_house
    sql = "SELECT * from houses WHERE id = #{@house}"
    return SqlRunner.run(sql)[0]
  end

  def self.all()
    sql = "SELECT * FROM students"
    students = SqlRunner.run(sql)
    return students.map{|student| Student.new(student)}
  end

  def self.find(id)
    sql = "SELECT * FROM students WHERE id = #{id};"
    return Student.new(SqlRunner.run(sql)[0])
  end

end