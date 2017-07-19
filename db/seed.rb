require_relative('../models/student')
require('pry')

@student1 = Student.new({
  'first_name' => "Chris",
  'last_name' => "Hunter",
  'age' => 21,
  "house" => "Griffindor" 
  })

@student2 = Student.new({
  'first_name' => "Craig",
  'last_name' => "Lynagh",
  'age' => 21,
  "house" => "Hufflepuff" 
    })

@student1.save

