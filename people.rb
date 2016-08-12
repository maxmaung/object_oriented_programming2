class Person
  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{@name}. Where's the best place to put this common method"
  end

end
#*************

class Student < Person
  def learn
  puts "I get it!"
  end
end
#***************

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object"
  end
end
#****************


chris = Instructor.new("Chris")
cristina = Student.new("Cristina")
chris.greeting
cristina.greeting
chris.teach
cristina.learn

# call the teach method on your student instance. What happens? Why doesn't that work?
#student does not have teach method
