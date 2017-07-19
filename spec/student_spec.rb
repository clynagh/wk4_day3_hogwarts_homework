require('minitest/autorun')
require('pry')
require_relative('../models/student')

class TestStudent < MiniTest::Test
  def setup
    @student1 = Student.new({
      'first_name' => "Chris",
      'last_name' => "Hunter",
      'age' => 21,
      "house" => "Griffindor" 
      })
  end

  def test_is_student
    assert_equal(Student, @student1.class)
  end
end