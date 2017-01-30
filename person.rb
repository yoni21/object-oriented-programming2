class Person
 att_reader :name

  def initialize(name)
   @name = name
  end

   def greeting
    puts "hi, my name is #{name}"
   end
  end

class Student < Person

  def learn
   puts "i get it"
  end
end

class Instuctor < Person

  def teach
   puts "Everything in ruby is an object"
  end

end

cristina = Student.new ("christina")
chris = Instructor.new("chris")

chris.greeting
cristina.greeting

chris.teach
christina.learn
