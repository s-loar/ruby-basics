def custom_each(array)
  i = 0
  while i < array.length
    yield array[i]
    i += 1
  end
end

names = ["Steve", "Sara", "Suzanne"]
numbers = [10,20,30,40]

custom_each(names) { |name| puts "The length of #{name} is #{name.length}." }
custom_each(numbers) { |number| puts "The swuare of #{number} is #{number ** 2}."}
