
class Person
  
	@@caffeine_units =100
	@@health_points = 100

	def self.caffeine_units
	  @@caffeine_units
	end

	def self.health_points
	  @@health_points
	end

	def to_s
  	"#{@name}. Has a strength of #{@strength} units."
    end

	def initialize(name, strength)
	  @name = name
	  @strength = strength
	  @miles = ''
	end
	
	def status
	  puts "#{@name} has strength of #{@strength}."
	end

	def run(miles)
	  @caffeine_units = @caffeine_units - (1 * miles)
	end

	def drink_coffee
	  @@caffeine_units += 10
	  if @@caffeine_units > 125
	   	puts "Feeling shaky caffeine levels at #{@@caffeine_units}! You died. Game over."
	  end
	end

end

class PowerRanger < Person
	@@strength = 50

	def initialize(color)
	  @color = color
	end

	def workout
		@@strength += 1
		@@health_points += 0.5
	end

	def punch
	  @@caffeine_units -= 5
	end

	def kick
	  @@caffeine_units -= 10
	end

	def rest
	  @@caffeine_units += 5
	end
end

class EvilNinja
end

# red = Person.new("red", "20")
# red.run('3')

red = PowerRanger.new("Yellow")
puts red.kick
puts red.kick
puts red.workout
puts red.drink_coffee
puts red.drink_coffee
puts red.drink_coffee
puts red.drink_coffee
puts red.drink_coffee
puts red.drink_coffee


