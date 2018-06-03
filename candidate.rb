class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace

  def initialize(name, details = {})
    # age, occupation, hobby, birthplace
    defaults = {age: 35, occupation: "Candidate", hobby: "Running for Office", birthplace: "USA"}
    defaults.merge!(details) # put the passed key/values into the defaults
    @name = name
    @age = defaults[:age]
    @occupation = defaults[:occupation]
    @hobby = defaults[:hobby]
    @birthplace = defaults[:birthplace]
  end
end

info = {age: 53, occupation: "Banker", hobby: "Fishing", birthplace: "Kentucky"}
senator = Candidate.new("Mr. Smith", info)
p senator.hobby
senator_1 = Candidate.new("Mr. Smith")
p senator_1.occupation

# omit the {} when the hash is the last argument
senator2 = Candidate.new("Mr. Smith", age: 53, hobby: "Fishing")
p senator2.hobby
p senator2.birthplace
