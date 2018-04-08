def roll_die
  roll = Random.rand(7)

  while roll == 0
    roll = Random.rand(7)
  end
  roll
end

def finalOutcome(army1, army2)
  puts "Final Outcome"
  puts "============="
  puts
  puts "Attacker's final army count: #{army1}"
  puts "Defender's final army count: #{army2}"
  puts
  if army1 > army2
    puts "Attackers gain a country!"
  else
    puts "Defenders retains their country!"
  end
end

puts
puts "New Battle Begins!"
puts "=================="
puts

def attacker_rolls(attackers_armies)
  attacker_rolls = []
  if attackers_armies == 2
    attacker_rolls << roll_die
  elsif attackers_armies == 3
    attacker_rolls << roll_die << roll_die
  else attackers_armies >= 4
    attacker_rolls << roll_die << roll_die << roll_die
  end
  attacker_rolls.sort!.reverse!
  puts "Attacker rolls #{attacker_rolls.join(", ")}"
  attacker_rolls
end

def defender_rolls(defenders_armies)
  defender_rolls = []
  if defenders_armies == 1
    defender_rolls << roll_die
  elsif defenders_armies >= 2
    defender_rolls << roll_die << roll_die
  end
  defender_rolls.sort!.reverse!
  puts "Defender rolls #{defender_rolls.join(", ")}"
  defender_rolls
end

def gameOn
  attackers_armies = 5
  defenders_armies = 5

  puts "Armies before the battle:"
  puts "Attackers: #{attackers_armies} armies"
  puts "Defenders: #{defenders_armies} armies"
  puts

  while attackers_armies > 1 && defenders_armies > 0
    tests1 = attacker_rolls(attackers_armies)
    tests2 = defender_rolls(defenders_armies)
    puts
    while tests1.length > 0 && tests2.length > 0
      attacker = tests1[0]
      defender = tests2[0]
      case attacker <=> defender
      when 0
        puts "Defender wins a battle : #{attacker} beats #{defender}"
        attackers_armies -= 1
        tests1.shift
        tests2.shift
      when -1
        puts "Defender wins a battle : #{defender} beats #{attacker}"
        attackers_armies -= 1
        tests1.shift
        tests2.shift
      when 1
        puts "Attacker wins a battle : #{attacker} beats #{defender}"
        defenders_armies -= 1
        tests1.shift
        tests2.shift
      end
    end
    puts
    puts "Armies after the battle:"
    puts "Attacker: #{attackers_armies}"
    puts "Defender: #{defenders_armies}"
    puts
    if attackers_armies > 1 && defenders_armies > 0
      puts "New Battle Begins!"
      puts "=================="
      puts
    end
  end

  finalOutcome(attackers_armies, defenders_armies)
end

gameOn

# puts
# puts attackers_armies
# puts defenders_armies
