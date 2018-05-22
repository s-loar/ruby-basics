def custom_include?(phrase, string)
  for start_pos in (0...phrase.length)
    return true if phrase[start_pos, string.length] == string
  end
  false
end

p custom_include?("The Ruby programming language is amazing!", "programming ")
p custom_include?("The Ruby programming language is amazing!", "Zikes!")
