class System

  attr_reader :bodies

  def initialize(bodies = [])
    @bodies = bodies
  end

  def add(body)
    @bodies.push(body)
  end

  def total_mass

    total_mass = 0

    bodies.each do |body|
      total_mass += body.mass
    end

    return total_mass

  end

end

class Body

  attr_reader :name, :mass

  def initialize(name,mass)
    @name = name
    @mass = mass
  end

end

class Planet < Body

  attr_reader :day, :year

  def initialize(name, mass, day, year)
    super(name, mass)
    @day = day
    @year = year
  end

end

class Star < Body

  attr_reader :type

  def initialize(name, mass, type)
    super(name, mass)
    @type = type
  end

end

class Moon < Body

  attr_reader :month, :planet

  def initialize(name, mass, month, planet)
    super(name, mass)
    @month = month
    @planet = planet

  end

end


solar = System.new

sun = Star.new("Sun", 332946.05, "G-type")
earth = Planet.new("Earth", 1, 24, 365)
moon = Moon.new("Moon", 0.0123, 27, earth.name)
mars = Planet.new("Mars", 0.107, 24.6, 687)
mercury = Planet.new("Mercury", 0.0553, 1407.5, 88)
venus = Planet.new("Venus", 0.815, 2802, 225)


solar.add(sun)
solar.add(earth)
solar.add(moon)
