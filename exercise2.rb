def roll
  number = Random.rand(7)
  while number == 0
    number = Random.rand(7)
  end
  puts "The result of your roll is #{number}"
end


def roll_die(times)
  times.times do
    roll
  end
end

roll_die(10)
