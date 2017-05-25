class System
  @@bodies = []

  attr_reader :bodies

  def initialize
  end

  def add(new_body)
    @@bodies << new_body
  end

  def total_mass
    total_mass = 0
    @@bodies.each do |body|
      total_mass += body
    end
    total_mass
  end
end

class Body
  attr_reader :name, :mass

  def initialize(name, mass)
    @name = name
    @mass = mass
  end
end

body1 = Body.new("Asteroid", 98399)
solar_system = System.new
solar_system.add(body1)

class Planet < Body
  attr_accessor :day_planet, :year_planet

  def initialize(name, mass, day_planet, year_planet)
    @day_planet  = day_planet
    @year_planet = year_planet
    super(name, mass)
  end

  def day
    "There are #{day_planet} hours in a day"
  end

  def year
    "There are #{day_planet} days in a year"
  end
end

earth = Planet.new("Earth", 435893475938, 24, 365)
puts earth.day

class Star < Body
  attr_accessor :type

  def initialize(name, mass, type_star)
    @type = type
    super(name, mass)
  end

  def print_type
    "#{name} is a #{type_star} star"
  end
end

sun = Star.new("Sun", 34633463, "G-Star")
puts sun.type

class Moon < Body
  attr_accessor :moon_month, :planet

  def initialize(name, mass, moon_month, planet)
    @moon_month = moon_month
    @planet = planet
    super(name, mass)
  end

  def month
    "There are #{moon_month} days in a month on the moon #{name}"
  end

  def moon_output
    "#{name} is orbiting #{planet.name}"
  end
end


whoknows = Planet.new("WhoKnows", 3279847329, 21, 293)
yourmom = Moon.new("YourMom", 4984290, 222, earth)

puts yourmom.month
puts yourmom.moon_output
