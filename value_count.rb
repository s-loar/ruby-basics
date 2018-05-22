def value_count(hash, value)
  count = 0
  hash.each { |hash_key,hash_value| count += 1 if hash_value == value }
  count
end

hash = {a: 5, b: 2, c: 3, d: 5}
p value_count(hash, 2)
p value_count(hash, 3)
