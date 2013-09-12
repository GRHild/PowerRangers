module Fight
	def punch(person)
		if @hp >= 20
			person.cries
		end
		@caffeine_units -= 5
	end

end

class Person
	attr_accessor :name, :strength, :hp, :caffeine_units

	def initialize(name)
	  @name = name
	  @strength = 20
	  @hp = 100
	  @caffeine_units = 100
	  @miles = ''
	end
	
	def status
	  puts "#{@name} has strength of #{@strength}. #{@name} has #{@caffeine_units} caffeine units!"
	end

	def run(miles)
	  @caffeine_units -= 5 * miles.to_i
	end

	def cries
		puts "#{@name} cries."
	end

	def drink_coffee
	  @caffeine_units += 10
	  if @caffeine_units > 125
	   	puts "Feeling shaky caffeine levels at #{@caffeine_units}! You died. Game over."
	  end
	end
end

class PowerRanger < Person
	include Fight
	attr_accessor :pstrength, :php, :color
	
	def initialize(color, strength, hp, caffeine_units)
	  super(@caffeine_units)
	  @strength = 50
	  @hp = 150
	  @color = color
  end

  def status
      puts "Ranger has a strength of #{@strength} and hp of #{hp}! Caffeine units at #{@caffeine_units}."
  end

	def workout
	  @pstrength += 1
	  @php += 0.5
	end

	def kick
	  @caffeine_units -= 10
	  puts "#{@caffeine_units}"
	end

	def rest
	  @caffeine_units += 5
	  puts "#{@caffeine_units}"
	end

	def use_megazord(person)
		person.cries
		person.hp = 0
	end

end

class EvilNinja < Person
	attr_accessor :strength, :evilness
	include Fight

	def initialize(name, strength, hp)
		super(@caffeine_units)
		@name = name 
		@strength = strength
		@hp = 250
	end

	def cause_mayhem(person)
		person.caffeine_units = 0
		puts "#{@name} is at #{@caffeine_units} caffeine levels!"
	end
end


def fight_scene
	p = Person.new("Greg")
	p2 = Person.new("Rosh")
	r = PowerRanger.new("red", "50", "100", "100")
	r2 = PowerRanger.new("blue", "50", "100", "100")
	e = EvilNinja.new("Rita", "60", "100")
	e2 = EvilNinja.new("Monk", "60", "100")
	
	e2.cause_mayhem(p2)
	p2.run(3)
	r.punch(p)
	p.cries
	e.cause_mayhem(r)
	r2.use_megazord(e)
end

# red = Person.new("Greg")
# puts red.status
# puts red.run(3)
# puts red.cries

# p = Person.new("person")


# # ranger = PowerRanger.new("Red", "50", "100", "100")
# # ranger.punch(p)
# # ranger.kick
# # ranger.status
# # ranger.use_megazord(p)

# ninja = EvilNinja.new("Greg", "250", "250")
# puts ninja.cause_mayhem(p)
# ninja.cause_mayhem(p)

# p.status
