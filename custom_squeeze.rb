def custom_squeeze(string)
  result = ""

  string.chars.each { |char| result << char unless result[-1] == char }
  
  result
end

p custom_squeeze("Thee aardvark   jummped   ovvvver the fenceee")
