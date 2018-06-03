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

  def initialize(name, age, rank)
    super(name, age)
    @rank = rank
  end

  def introduce
    super + "\nI am a #{@rank}. Woo-hoo!"
  end

  def yell
    "Who's the Boss? I'm the boss!"
  end
end

class Worker < Employee
  def clock_in(time)
    "Starting my shift at #{time}"
  end

  def yell
    "I'm working! I'm working!"
  end
end

jake = Manager.new("Jake", 31, "Vice President")
# p jake
puts jake.introduce
# puts jake.yell

# dan = Worker.new("Dan", 22)
# puts dan.introduce
# puts dan.clock_in(Time.now)
# puts dan.yell

# puts jake.is_a?(Manager)
# puts jake.is_a?(Employee)
# puts jake.instance_of?(Manager)
# puts jake.instance_of?(Employee)
