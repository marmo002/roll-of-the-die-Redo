def generate_numb(max)
  number = Random.rand(max)
  while number == 0
    number = Random.rand(max)
  end
  number
end
result = generate_numb(7)
puts "The result of your roll is #{result}"
