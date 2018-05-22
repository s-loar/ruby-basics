def talk_proc(name, &myprc)
  puts "Let me tell you about #{name}"
  myprc.call(name)
end

good_things = Proc.new do |name|
  puts "#{name} is a jolly good fellow!"
end

bad_things = Proc.new do |name|
  puts "#{name} is a dolt."
end


talk_proc("Rex", &good_things)
talk_proc("Rex", &bad_things)

squares_proc = Proc.new { |number| number ** 2 }
p [1,2,3].map(&squares_proc)
p squares_proc.call(5)

squares_lambda = lambda { |number| number ** 2 }
p [1,2,3].map(&squares_lambda)
p squares_lambda.call(5)
