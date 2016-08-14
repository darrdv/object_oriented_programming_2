class Person
  attr_reader:name

  def initialize(name)
    @@name = name
  end

  def greeting
    "Hi, my name is #{@@name}"
  end
end

class Instructor < Person
  def teach
    "Everything in Ruby is an Object"
  end
end

class Student < Person
  def learn
    "I get it!"
  end
end

chris = Instructor.new('Chris')
chris.greeting
chris.teach
cristina = Student.new('Cristina')
cristina.greeting
cristina.learn

#Calling teach method on student instance
#cristina.teach
#This does not work because the teach method is an instance method of class Instructor
#so class Student (which only cristina is an instance of) is not able to find it.
