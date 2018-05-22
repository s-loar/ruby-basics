def longest_word(sentence)
  words = sentence.split
  big_word = ""
  big_length = big_word.size
  words.each do |word|
    if word.size >= big_length
      big_word = word
      big_length = word.size
    end
  end
  big_word
end

p longest_word("what is the longest word in this phrase?")
p longest_word("Sticks and stones")
