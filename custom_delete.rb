def custom_delete(string, delete_chars)
  result = ""

  string.each_char { |char| result << char unless delete_chars.include?(char) }

  result
end

p custom_delete("the rain in spain", "a")
p custom_delete("the rain in spain", "pn")
p custom_delete("the rain in spain", "z")
