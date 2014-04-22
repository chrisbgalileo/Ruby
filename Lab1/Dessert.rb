class Dessert
	@@count = 0
    def initialize(name,size,calories)
	  @name = name
	  @size = size
	  @calories = calories
	  @@count = @@count + 1
    end
    
	def get_name() 
		return @name
	end
	
	def get_size() 
		return @size
	end
	
	def get_calories() 
		return @calories
	end
	
	def set_name(name) 
		@name = name
	end
	
	def set_size(size) 
		@size = size
	end
	
	def set_calories(calories) 
		@calories = calories
	end
	
    def healthy?
		if (@calories < 200)
			return true
		end
		return false
    end
    
    def delicious?
		return true
    end
    
    def to_s
		print "Dessert: "
		print @name
		print " tamano: "
		print @size
		print " calories: "
		puts @calories
    end
	
	def count 
		return @@count
	end
end

class JellyBean < Dessert
    def initialize(name, size, calories, flavor)
		super(name, size, calories)
		@flavor = flavor
    end
	
	def get_flavor() 
		return @flavor
	end
	
	def set_flavor(flavor) 
		@flavor = flavor
	end
	
	def delicious?
		if (@flavor == "black licore")
			return false
		end
		return true
	end	
	def to_s
		print "JellyBean: "
		print @name
		print " tamano: "
		print @size
		print " calories: "
		print @calories
		print " flavor: "
		puts @calories
    end
	
end

#Test
#postre1 = JellyBean.new("choco", 100, 50, "panqueque")
#postre2 = JellyBean.new("choco", 100, 201, "black licore")
#postre1.to_s
#postre2.to_s
#puts postre1.delicious?
#puts postre2.delicious?
#puts postre1.healthy?
#puts postre2.healthy?
#puts postre2.count