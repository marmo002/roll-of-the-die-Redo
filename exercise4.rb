def roll
  number = Random.rand(7)
  while number == 0
    number = Random.rand(7)
  end
  number
end


def roll_die(times)
  results = []
  times.times do
    results << roll
  end
  results.sort!
  f = results[0]
  l = results[-1]
  results.map! { |number|
    "The result of your roll is #{number}"
  }
  results << "The lowest numer is #{f}"
  results << "The highest numer is #{l}"
  results
end

puts roll_die(5)
