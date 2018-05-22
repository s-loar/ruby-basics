def custom_starts_with?(phrase, string)
  phrase[0, string.length] == string
end

def custom_ends_with?(phrase, string)
  phrase[-string.length..-1] == string
end

p custom_starts_with?("The Ruby programming language is amazing!", "The")
p custom_starts_with?("The Ruby programming language is amazing!", "the")

p custom_ends_with?("The Ruby programming language is amazing!", "amazing!")
p custom_ends_with?("The Ruby programming language is amazing!", "amazing")
p custom_ends_with?("The Ruby programming language is amazing!", "!")
