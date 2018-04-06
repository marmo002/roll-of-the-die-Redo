def roll
  number = Random.rand(7)
  while number == 0
    number = Random.rand(7)
  end
  "The result of your roll is #{number}"
end


def roll_die(times)
  results = []
  times.times do
    results << roll
  end
  results
end
sorted = roll_die(10).sort
puts sorted
