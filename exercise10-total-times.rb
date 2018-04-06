roll1 = (1..6)
roll2 = (1..6)
total_permutations = 0

total_times = Hash.new

roll1.each do |a|
  roll2.each do |b|
    total = a + b
    if total_times[total] == nil
      total_times[total] = 1
    else
      total_times[total] += 1
    end
  end
end

total_times.each do |k, v|
  v > 1 ? t = "times" : t = "time"
  puts "#{k} occurs #{v} #{t}"
end
