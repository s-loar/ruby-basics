class Employee

  attr_accessor :age
  attr_reader :name

  def initialize( name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{name} and I am #{age} years old"
  end
end

# jake = Employee.new("Jake", 31)
# p jake
# puts jake.introduce

class Manager < Employee
end

class Worker < Employee
end

jake = Manager.new("Jake", 31)
p jake
puts jake.introduce

dan = Worker.new("Dan", 22)
puts dan.introduce

puts jake.is_a?(Manager)
puts jake.is_a?(Employee)
puts jake.instance_of?(Manager)
puts jake.instance_of?(Employee)
