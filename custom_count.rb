def custom_count(string, search_chars)
  counter = 0
  string.each_char {|letter| counter += 1 if search_chars.include?(letter) }
  counter
end


p custom_count("Aardvarks as a way to walk", "Aa")
p custom_count("The rain in Spain", "j")
p custom_count("The rain in Spain", "a")
