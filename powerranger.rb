
class Person

	@@run = 5
	@@scream = 10
	@@drink_coffee =100

	def initialize(name, caffeine_level)
		@name = name
		@caffeine_level = caffeine_level
	end
	
	def run(miles)
		puts "Person runs #{miles} miles."
	end

	def scream(decibals)
		puts "Person screams #{decibals}dB load"
	end
end

class PowerRanger
end

class EvilNinja
end
