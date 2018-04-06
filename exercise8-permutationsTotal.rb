roll1 = (1..6)
roll2 = (1..6)

roll1.each do |a|
  roll2.each do |b|
    total = a + b
    puts "Dice roll: #{a}, #{b} Total: #{total}"
  end
end
