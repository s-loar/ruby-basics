class Player

  def play_game
    rand(1..100) > 50 ? "Winner" : "Loser"
  end
end

bob = Player.new
sue = Player.new

# puts bob.play_game
# puts sue.play_game

def sue.play_game # this is the singleton method
  "Winner"
end

puts bob.play_game
puts sue.play_game
