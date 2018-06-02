class Bicycle
  @@maker = "BikeTech"
  @@count = 0

  def self.description
    "I'm the Bicycle"
  end

  def self.count
    @@count
  end

  def maker
    @@maker
  end

  def initialize
    @@count += 1
  end

end

puts Bicycle.description
p Bicycle.count

bike = Bicycle.new
p bike.maker
p Bicycle.count
