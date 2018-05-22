def custom_index(string, substring)
  return nil unless string.include?(substring)
  length = substring.length
  string.chars.each_with_index do |char, index|
    sequence = string[index, length]
    return index if sequence == substring
  end
end

p custom_index("I am very handsome", "I")
p custom_index("I am very handsome", "h")
p custom_index("I am very handsome", "z")
p custom_index("I am very handsome", "am")
