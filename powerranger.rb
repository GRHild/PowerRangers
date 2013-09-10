
class Person
  
	@@caffeine_units =100
	@@health_points = 100

	def self.caffeine_units
	  @@caffeine_units
	end

	def self.health_points
	  @@health_points
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
	  @@caffeine_units -= 2 * miles.to_i
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
	@@health_points = 150

	def self.strength
		@@strength
	end

	def initialize(color)
	  @color = color
	end

	def workout
		@@strength += 1
		@@health_points += 0.5
	end

	def punch
	  @@caffeine_units -= 5
	  puts "#{@caffeine_units}"
	end

	def kick
	  @@caffeine_units -= 10
	  puts "#{@@caffeine_units}"
	end

	def rest
	  @@caffeine_units += 5
	  puts "#{@@caffeine_units}"
	end
end

class EvilNinja
end

# red = Person.new("red", "20")
# red.run('3')


red = Person.new("Greg", "20")
puts red.drink_coffee
puts red.run("15")

