# Create a two hashes named monster1 and monster2 and assign values: health = 500. 
# Create a for loop that ranges from 1 to 5 and declare their attack damages 
#(random number that has a max value of 100) inside the loop. 
# The loop should run just 5 times so that means the battle only lasts 5 rounds. Have the damage minus to their health. 
# After the loop, check who has the greater health and declare that monster as the winner.

class Monster
	attr_accessor :name
	attr_accessor :health

	def initialize (name,health) 
		puts "#{name} is initialized with health #{health}"
		@name = name
		@health = health

	end

	def attack (monster)
		damage = rand(1..100)
		puts "#{name} attacks with #{damage}"
		monster.health -= damage	
		puts "#{monster.name} health is now #{monster.health}"
	end
end


monster1 = Monster.new("Monster_1",500)
monster2 = Monster.new("Monster_2",500)

for i in (1..5)
	puts "ROUND #{i}"
	monster1.attack(monster2)
	monster2.attack(monster1)
end

print "\n"

if monster1.health > monster2.health 
	puts "Monster_1 wins"
else
	puts "Monster_2 wins"
end
