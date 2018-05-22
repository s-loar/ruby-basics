def evens_and_odds(numbers)
  numbers.partition{ |num| num.odd? }
end

result = evens_and_odds([4,8,15,16,23,42])
# result = evens_and_odds([1,3,15,17,23,41])
p result
