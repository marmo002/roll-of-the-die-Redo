def roll_die
  roll = Random.rand(7)
  while roll == 0
    roll = Random.rand(7)
  end
  roll
end

def two_dice_roll
  roll1 = roll_die
  roll2 = roll_die
  total_rolled = roll1 + roll2

  puts "You rolled #{roll1} and #{roll2}"
  if roll1 == roll2
    puts "Doubles!"
  end
  puts "Your total is #{total_rolled}"
end

two_dice_roll
