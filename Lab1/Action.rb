module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
  
  def run(velocidad)
    @tiempo = 10/velocidad
	sleep(@tiempo)
    puts "I run 10 meters and take #{@tiempo} in do it"
  end
  
end

class Rabbit
  include Action
  
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
  
  def chirp
	veces = rand(90) + 10
	veces.times do
		puts "Chirp... chirp!!"
	end	
  end	
end

#Test
#peter = Rabbit.new("Peter")
#jiminy = Cricket.new("Jiminy")

#peter.jump
#jiminy.jump
#peter.run(5)
#jiminy.run(1)

#jiminy.chirp()