def custom_uniq(array)
  final = []
  array.each { |item| final << item unless final.include?(item) }
  final
end

p custom_uniq([1,2,3,5,12,2,1,5,12,12,12,67])
p [1,2,3,5,12,2,1,5,12,12,12,67].uniq
