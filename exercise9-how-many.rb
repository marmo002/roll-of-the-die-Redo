roll1 = (1..6)
roll2 = (1..6)
total_permutations = 0

roll1.each do |a|
  roll2.each do |b|
    total = a + b
    puts "Dice roll: #{a}, #{b} Total: #{total}"
    total_permutations += 1
  end
end

puts "There are #{total_permutations} possible permutations"
