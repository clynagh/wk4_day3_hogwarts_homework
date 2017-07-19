require_relative('../models/student')
require_relative('../models/house')
require('pry')

@house1 = House.new({
  'name' => "Griffandor",
  'url' => 'www'
  })

@house2 = House.new({
  'name' => "Hufflepuff",
  'url' => 'www'
  })

@house3 = House.new({
  'name' => "Ravenclaw",
  'url' => 'www'
  })
@house4 = House.new({
  'name' => "Slytherin",
  'url' => 'www'
  })

@house1.save
@house2.save
@house3.save
@house4.save



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

