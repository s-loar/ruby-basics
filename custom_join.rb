def custom_join(array, delimiter = "")
  custom_string = ""
  array_length = array.length - 1
  array.each_with_index do |word, i|
    custom_string << word
    custom_string << delimiter unless i ==  array_length
  end
  custom_string
end

p custom_join(["the", "rain", "in", "spain"], " ")
