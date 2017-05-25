class Person

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def greeting
    "Hi, my name is #{name}"
  end
end

class Student < Person

  def learn
    "I get it!"
  end

end

class Instructor < Person

  def teach
  "Everything in Ruby is an Object."
  end

end

chris = Instructor.new("Chris")
cristina = Student.new("Cristina")

chris.greeting
cristina.greeting

chris.teach
cristina.learn

# chris.learn
# cristina.teach

# ^^ this does not work since there is an
# undefined/non-existent method for the instructor,
# in this case chris, to learn, and there is no method
# for cristina created to learn
