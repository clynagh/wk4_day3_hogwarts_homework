require_relative('../models/student')
require_relative('../models/house')
require('pry')

@house1 = House.new({
  'name' => "Hufflepuff",
  'url' => 'www'
  })

@house1.save

@student1 = Student.new({
  'first_name' => "Chris",
  'last_name' => "Hunter",
  'age' => 21,
  "house" => 1 
  })

@student2 = Student.new({
  'first_name' => "Craig",
  'last_name' => "Lynagh",
  'age' => 21,
  "house" => 1
    })

@student1.save
@student2.save


binding.pry
nil

