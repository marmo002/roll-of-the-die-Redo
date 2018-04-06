roll1 = (1..6)
roll2 = (1..6)
total_permutations = 0

total_times = Hash.new

roll1.each do |a|
  roll2.each do |b|
    total = a + b
    total_permutations += 1

    puts "Dice roll: #{a}, #{b} Total: #{total}"

    if total_times[total] == nil
      total_times[total] = 1
    else
      total_times[total] += 1
    end

  end
end

puts "You have #{total_permutations} permutations in total"

puts
puts "Totals counts"
puts "****************************************"
total_times.each do |k, v|
  v > 1 ? t = "times" : t = "time"
  puts "#{k} occurs #{v} #{t}"
end

puts
puts "Odds counts"
puts "****************************************"
total_times.each { |k,v|
  percentage = (v.to_f / total_permutations)*100
  puts "The odds of #{k} coming up are #{percentage.round}%"
}
