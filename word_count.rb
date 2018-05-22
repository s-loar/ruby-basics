def word_count(string)
  new_hash = Hash.new(0)
  words = string.split(" ")
  words.each { |word| new_hash[word] += 1 }
  new_hash
end

sentence = "Once upon a time in a land far far away"

p word_count(sentence)
